require 'json'
require 'yaml'
require 'set'
require 'colormath'

class String
    def transparency(percentage)
        if percentage > 100 || percentage < 0
            raise "\n\nWhen you use .transparency() the value needs to be between 0 and 100.\n100 = 100% transparent (nothing), 0 = 0%"
        end
        # flip it 
        percentage = 100 - percentage
        # scale it to 255
        number = ((percentage/100.0) * 255).to_i
        # convert to hex
        hex_value = number.to_s(16)
        # ensure the first digit is shown 
        if number < 16
            hex_value = "0"+hex_value
        end
        
        # get the first values
        return self[0..6] + hex_value
    end
end

def color_to_i(color_string_input)
    color_string = color_string_input.dup
    color_string.sub!(/#/,"")
    # if doesn't include alpha value, add it
    if color_string.length == 6
        color_string = color_string + "FF"
    end
    as_int = color_string.to_i(base=16)
    return as_int
end

def name_not_in(name, hash)
    name = name.to_sym
    index = 1
    if hash.keys.include?(name)
        while hash.keys.include?("#{name}_#{index}".to_sym)
            index += 1
        end
        return "#{name}_#{index}".to_sym
    else
        return name
    end
end

def euclidean_distance(p1,p2)
    sum_of_squares = 0
    p1.each_with_index do |p1_coord,index| 
        sum_of_squares += (p1_coord - p2[index]) ** 2 
    end
    Math.sqrt( sum_of_squares )
end

def is_closest_to(point, hash_of_points)
    distances = []
    for each_key, each_value in hash_of_points
        distances.push(euclidean_distance(each_key, point))
    end
    min_index = distances.each_with_index.min[1]
    return hash_of_points.values[min_index]
end

def name_of_hex_color(color)
    color = ColorMath::hex_color(color.sub(/(......)../,'\1'))
    hue_names = {
        [0] => "red",
        [20] => "orange",
        [30] => "orange",
        [43] => "yellow",
        [54] => "yellow",
        [88] => "lime",
        [110] => "green",
        [160] => "teal",
        [177] => "cyan",
        [205] => "blue",
        [230] => "blue",
        [267] => "purple",
        [285] => "violet",
        [317] => "pink",
        [346] => "red",
    }
    
    color_diff = ((color.red - color.blue).abs + (color.blue - color.green).abs + (color.green - color.red).abs) / 3
    
    if color_diff < 0.1
        main_color = "gray"
    else
        main_color = is_closest_to([color.hue], hue_names)
    end
    
    # if really light
    if color.luminance > 0.985
        main_color = "white"
    # if really dark
    elsif color.luminance < 0.025
        main_color = "black"
    # if kinda light
    elsif color.luminance > 0.75
        main_color = "light #{main_color}"
    # if kinda dark
    elsif color.luminance < 0.25
        main_color = "dark #{main_color}"
    end
    
    return main_color
end

def hex_to_rgb(hex)
  h = hex.gsub("#","")
  /(?<r>..)(?<g>..)(?<b>..)/ =~ h
  [r,g,b].map {|cs| cs.to_i(16)}
end

def convert_to_ruby(json_theme)
    # output 
        # color_name -> hex
        # group_name -> scopes
        # colors -> [ groups ]
    # 
    # UI Colors
    #
    ui_colors = {}
    for each_key, each_value in json_theme["colors"]
        sections = each_key.split(/\./)
        current_section = ui_colors
        for each_section in sections
            each_section = each_section.to_sym
            if current_section[each_section] == nil
                current_section[each_section] = {}
            end
            prev_section = current_section
            current_section = current_section[each_section]
        end
        prev_section[sections[-1].to_sym] = each_value
    end
    
    #
    # get color sections
    # 
    new_color_mapping = {}
    groups = {}
    for each in json_theme["tokenColors"]
        foreground = each["settings"]["foreground"]
        font_style = each["settings"]["fontStyle"]
        # convert to symbol when not nil
        if font_style.is_a?(String)
            font_style = font_style.gsub(" ", "_")
            font_style = font_style.to_sym
        end
        if foreground.is_a?(String)
            foreground.upcase
        end
        key = [foreground, font_style]
        if new_color_mapping[key] == nil
            new_color_mapping[key] = []
        end
        # create the groups
        if each["name"] == nil
            group_name = :misc
        else
            group_name = (each["name"].downcase.gsub(/[\s-]/,"_").gsub(/\W/,"")+"_group").to_sym
        end
        groups[group_name] = each["scope"]
        # concat all the scopes
        new_color_mapping[key].push(group_name)
    end
    
    # 
    # Create the Color Mapping
    # 
    colors = Set.new
    for each_key, each_value in new_color_mapping
        if each_key[0] != nil
            colors.add(each_key[0])
        end
    end
    colors = colors.sort_by{|e| ColorMath::hex_color(e.sub(/(......)../, '\1')).hue}
    color_names = {}
    index = 0
    for each in colors
        index += 1
        color_name = name_of_hex_color(each).gsub(/ /, "_")
        unique_name = name_not_in(color_name, color_names)
        color_names[ unique_name ] = each
    end
    for each_key, each_value in new_color_mapping.dup
        # delete the original keys
        new_color_mapping.delete(each_key)
        color = each_key[0]
        if color != nil
            color = color_names.select{ |k,v| v == color }.map{|k,v| k}[0]
        end
        each_key = [color, each_key[1]]
        # replace them with the color names
        new_color_mapping[each_key] = each_value
    end
    color_names[:no_color] = nil
    
    #
    # Convert the mapping
    # 
    mapping = {}     
    for each_key, each_value in new_color_mapping
        if each_value != []
            # convert the colors and styles
            color = each_key[0]
            style = each_key[1]
            if color == nil
                color = :no_color
            end
            if style == nil
                style = :normal
            end
            
            if not(mapping[color].is_a?(Hash))
                mapping[color] = {}
            end
            
            if not(mapping[color][style].is_a?(Array))
                mapping[color][style] = []
            end
            
            mapping[color][style] = each_value
        end
    end
    
    # 
    # 
    # Build the string
    # 
    # 
        output = "require_relative './theme_maker'\n\ntheme_info = {\n    name: 'My Theme',\n    type: 'dark',\n}\n\n"
        
        # colors
        output = output + "#\n# Colors\n#"
        longest_possible_name = 16
        for each_key, each_value in color_names
            output = output + "\n#{each_key.to_s}#{" "*(longest_possible_name - each_key.to_s.length)}= '#{each_value}'"
        end
        
        # ui colors
        output = output + "\n\n\n#\n# UI Colors\n#\nui = {"
        for each_key, each_value in ui_colors
            if each_value.is_a?(Hash)
                output = output + "\n    #{each_key.to_s}: {"
                for each_sub_value, each_color in each_value
                    output = output + "\n        #{each_sub_value.to_s}: '#{each_color}',"
                end 
                output = output + "\n    },"
            else
                output = output + "\n    #{each_key.to_s}: '#{each_color}',"
            end
        end
        output = output + "\n}\n\n"
        
        # groups
        output = output + "\n\n#\n# Code Groups\n#\n"
        for each in groups
            each_key, each_value = each
            if each_value == nil
                each_value = []
            end
            value = "["
            for each_scope in each_value
                value = value + "\n    \"#{each_scope}\","
            end
            value = value + "\n]"
            output = output + "\n#{each_key.to_s} = #{value}"
        end
        
        # mapping
        output = output + "\n\n#\n# Mapping\n#\n\nmapping = {"
        for each_key, each_value in mapping
            output = output + "\n    #{each_key.to_s} => {"
            for each_style, each_group_list in each_value
                output = output + "\n        #{each_style.to_s}: ["
                for each_group in each_group_list
                    output = output + "\n            *#{each_group},"
                end
                output = output + "\n        ],"
            end 
            output = output + "\n    },"
        end
        output = output + "\n}"
        
        # exporting
        output = output + "\n\nIO.write(\"theme.json\", convert_to_json_theme(theme_info, ui, mapping) )"
    return output
end


def convert_to_json_theme(theme_info, ui_colors, mapping)
    # if its a function run it first
    if mapping.is_a?(Proc)
        mapping = mapping[]
    end
    if ui_colors.is_a?(Proc)
        ui_colors = ui_colors[]
    end
    
    output = {
        name: theme_info[:name],
        type: theme_info[:type],
        "tokenColors"  => [
        ],
        "colors" => {
        }
    }
    
    # 
    # Generate the tokenColors
    # 
    token_colors = []
    for each_color, each_style_hash in mapping
        for each_style, all_scopes in each_style_hash
            token_colors.push({
                "name" => "#{each_color} #{each_style}",
                "scope" => all_scopes.flatten,
                "settings" => {
                    "fontStyle"  => each_style.to_s,
                    "foreground" => each_color.to_s
                }
            })
        end
    end
    output["tokenColors"] = token_colors
    
    # 
    # generate the UI colors
    # 
    json_colors = {}
    for each_key, each_value in ui_colors
        if each_value.is_a?(Hash)
            for each_sub_key, each_sub_value in each_value
                json_colors["#{each_key}.#{each_sub_key}"] = each_sub_value
            end
        else
            json_colors["#{each_key}"] = each_value
        end
    end
    output["colors"] = json_colors
    
    return JSON.pretty_generate(output)
end


if ARGV[0] != nil
    if ARGV[0] =~ /(.+)\.json/
        IO.write( $1+".rb", convert_to_ruby( JSON.parse( IO.read( ARGV[0]))))
    end
end