require "atk_toolbox"

json_data = JSON.load(FS.read("./theme.json"))

language_endings = [ "markdown", "coffee", "ts", "js", "css", "sass", "scss", "less", "postcss", "json", "python", "c", "shell", "ruby", "go", "cpp", "assembly", "pug", "powershell", "haml", "html", "glsl", "dockerfile", "perl", "yaml", "php", "asm",]

all_scopes = Set.new
all_endings = Set.new
for each_obj in json_data["tokenColors"]
    if each_obj["scope"].is_a?(Array)
        for each_scope in each_obj["scope"]
            for each_seperate_scope in each_scope.split(/\s+/)
                dot_seperated = each_seperate_scope.split(/\./)
                if language_endings.include?(dot_seperated[-1])
                    # remove the language ending
                    dot_seperated.pop()
                end
                all_scopes.add(dot_seperated.join("."))
            end
        end
    end
end

p all_scopes.to_a
p all_scopes.size 