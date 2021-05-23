require_relative './theme_generator_generator'

# Functions are yellow
# Keywords are red
# Operators are light blue
# Entitys are purple
# Data is dark blue
# Literal numbers are pink 
# Literal strings are dim green
# Literal regex is lime green
# Types/Classes are pink 

# Parameters are bold blue
# Literal escapes are orange

misc                            = '#c17e70'
literals_and_parameters         = '#c792eb' # '#82aafe' # '#68cfaf' # '#82aaff' 
types_constants_special_vars    = '#9fa8db' #'#e57eb3'
units_and_globals               = '#ddd790'
strings                         = '#82aaff' # '#c792eb' # '#80cbc4' 
string_and_regex                = '#4ec9b0d0' # '#80cbc4' # '#70bf3b' # '#bffb98' # '#c17e71' # '#ddd791' # '#3f848d' # '#c3e88d' # '#4ec9b0'
misc_2                          = '#4ec9b1d0'
text_punctuation                = '#f07178' 
member_access                   = '#c792ea' # '#82aaff' # '#80cbc4'
documentation                   = '#64bac5'
keywords_and_control_flow       = '#9fa8da' # '#80cbc4' # '#c792eb' # '#9fa8da' 
control_flow_color              = '#f78c6c' # '#55d89d' # '#68cfaf' # '#04d895'
functions                       = '#55d89d' # '#89ddff' # '#4fc3f7' 
operators_and_attributes        = '#fec355' 
entity_definitions              = '#82aaff' # '#c792ea' 
assignment_and_special_vars     = '#89ddff'  # '#f78c6c'
tags_literals_and_instance_vars = '#e57eb4' # '#f07178'
# dark_slate      = '#3f848d'

#
# Text/Highlighter Color Pallet
#
black           = '#000000'
white           = '#ffffff'
light_gray      = '#c7cbcd'
gray            = '#546e7a'
rust            = misc
orange          = literals_and_parameters
yellow          = types_constants_special_vars
bananna_yellow  = units_and_globals
lime            = strings
green           = string_and_regex
bold_green      = misc_2
vibrant_green   = text_punctuation
dim_green       = member_access
light_slate     = documentation
dark_slate      = control_flow_color
light_blue      = keywords_and_control_flow
blue            = functions
electric_blue   = '#00aeffe7'
light_purple    = operators_and_attributes
pink            = entity_definitions
red             = assignment_and_special_vars
soft_red        = tags_literals_and_instance_vars
no_color        = ''

black           = '#000000'
white           = '#ffffff'
light_gray      = '#82aafe'# '#c7cbcd'
gray            = '#546e7a'
rust            = '#c17e70'
orange          = '#f78c6c'
yellow          = '#fec355'
bananna_yellow  = '#ddd790'
lime            = '#64bac4'
green           = '#4ec9b0'
bold_green      = '#4ec9b0d0'
vibrant_green   = '#04d895'
dim_green       = '#80cbc4'
light_slate     = '#64bac5'
dark_slate      = '#89ddff'
light_blue      = '#89ddfe'
blue            = '#c3e88d'
electric_blue   = '#00aeffe7'
light_purple    = '#c792ea'
pink            = '#e57eb3'
red             = '#ff5572'
soft_red        = '#f07178'
no_color        = ''

correct_colors = {
    black:            '#000000',
    white:            '#ffffff',
    light_gray:       '#c7cbcd',
    gray:             '#546e7a',
    rust:             '#c17e70',
    orange:           '#f78c6c',
    yellow:           '#fec355',
    bananna_yellow:   '#ddd790',
    lime:             '#c3e88d',
    green:            '#4ec9b0',
    bold_green:       '#4ec9b0d0',
    vibrant_green:    '#04d895',
    dim_green:        '#80cbc4',
    light_slate:      '#64bac5',
    dark_slate:       '#3f848d',
    light_blue:       '#89ddff',
    blue:             '#82aaff',
    electric_blue:    '#00aeffe7',
    light_purple:     '#c792ea',
    pink:             '#e57eb3',
    red:              '#ff5572',
    soft_red:         '#f07178',
    no_color:         '',
}

#
# UI Color Pallet
#
background_color           = '#242938'
secondary_background_color = '#293342'
accent_color               = dim_green
hover_background           = '#2c3b4f'
scrollbar_color            = '#324962'
input_box_background       = '#414863'
ui_text_color              = '#5e718a'
editor_text_color          = '#bfc9d5'
off_white                  = '#eeffff'
editor_selection_color     = '#83b2e1'
solid_blue                 = '#2670a1'
FINDME                     = '#e100ffc0'
background_color                 = '#184967'
cursor_color               = '#ff9900'
error_red                  = '#ef5350'

strong_shadow = black.transparency(70)
weak_shadow   = "#202531" # used in places where transparency doesn't work

ui = ->() do {
    # 
    # Terminal Colors
    # 
    terminal: {
        ansiBlack:         correct_colors[:background_color],
        ansiBrightBlack:   correct_colors[:ui_text_color],
        ansiBlue:          correct_colors[:blue],
        ansiBrightBlue:    correct_colors[:electric_blue],
        ansiCyan:          correct_colors[:light_blue],
        ansiBrightCyan:    correct_colors[:light_blue],
        ansiGreen:         correct_colors[:lime],
        ansiBrightGreen:   correct_colors[:lime],
        ansiMagenta:       correct_colors[:light_purple],
        ansiBrightMagenta: correct_colors[:light_purple],
        ansiWhite:         correct_colors[:off_white],
        ansiBrightWhite:   correct_colors[:white],
        ansiRed:           correct_colors[:red],
        ansiBrightRed:     correct_colors[:soft_red],
        ansiYellow:        correct_colors[:yellow],
        ansiBrightYellow:  correct_colors[:bananna_yellow],
    },
    # 
    # Main UI
    # 
    foreground: ui_text_color,
    focusBorder: accent_color, # border when something (panel or input box) is active/focused
    editor: {
        foreground: editor_text_color,
        background: background_color,
        lineHighlightBackground: hover_background, # which line the cursor is on
        selectionBackground: editor_selection_color.transparency(65.88),
        
        wordHighlightBackground: editor_selection_color.transparency(29.8),
        selectionHighlightBackground: editor_selection_color.transparency(29.8),
        wordHighlightStrongBackground: editor_selection_color.transparency(29.8),
        
        findMatchBorder: cursor_color,
        findMatchBackground: cursor_color.transparency(63.13),
        findMatchHighlightBorder: solid_blue,
        findMatchHighlightBackground: solid_blue,
        
        rangeHighlightBackground: solid_blue.transparency(65),
        hoverHighlightBackground: solid_blue.transparency(65),
        inactiveSelectionBackground: solid_blue.transparency(65),
    },
    tab: {
        border: background_color,
        
        activeForeground: off_white,
        activeBackground: background_color,
        activeBorder: light_gray,
        activeModifiedBorder: light_gray,
        
        unfocusedActiveBorder: background_color,
        unfocusedActiveForeground: off_white,
        
        inactiveForeground: ui_text_color,
        inactiveBackground: background_color,
    },
    # this is NOT the scrollbar idk WTF they were thinking when they named it this.
    # This shadow is the shadow underneath the tabs
    scrollbar: {
        shadow: black,
    },
    # the thing at the bottom of the editor
    statusBar: {
        foreground: ui_text_color,
        background: background_color,
        border: background_color,
        # no folder
        noFolderBackground: background_color,
        noFolderBorder: background_color,
        # debugging
        debuggingBorder: background_color,
        debuggingBackground: background_color,
        debuggingForeground: ui_text_color,
    },
    statusBarItem: {
        prominentHoverBackground: background_color,
        prominentBackground: background_color,
        activeBackground: background_color,
        hoverBackground: background_color,
    },
    # lists are used all over the place,
    # they're in 
    # - the command pallet,
    # - quick inputs, 
    # - and there are lists everywhere in the side panel
    list: { 
        focusForeground: off_white,
        focusBackground: solid_blue,
        
        activeSelectionBackground: solid_blue,
        activeSelectionForeground: off_white,
        
        hoverBackground: hover_background,
        hoverForeground: off_white,
        
        inactiveSelectionBackground: background_color,
        inactiveSelectionForeground: ui_text_color,
        
        dropBackground: hover_background,
        
        highlightForeground: off_white,
    },
    # this is the actual bar/slider (not the background, but the thing you grab)
    # the 'background' just means the color of the slider
    # aka its not the color of the scolling area 
    scrollbarSlider: {
        hoverBackground: scrollbar_color,
        activeBackground: scrollbar_color,
        background: scrollbar_color,
    },
    menu: {
        selectionBackground: black.transparency(69),
        selectionBorder: black.transparency(81),
        background: background_color,
        selectionForeground: dim_green,
        foreground: off_white,
        separatorBackground: off_white,
    },
    menubar: {
        selectionBackground: black.transparency(81),
        selectionBorder: black.transparency(81),
        selectionForeground: dim_green,
    },
    listFilterWidget: {
        noMatchesOutline: black.transparency(81),
        outline: black.transparency(81),
        background: black.transparency(81),
    },
    gitDecoration: {
        ignoredResourceForeground:     ui_text_color.transparency(55),
        deletedResourceForeground:     red,
        conflictingResourceForeground: orange,
        modifiedResourceForeground:    green,
        untrackedResourceForeground:   lime,
    },
    editorGroupHeader: {
        tabsBackground: background_color,
        tabsBorder: background_color,
        noTabsBackground: background_color,
    },
    titleBar: {
        activeBackground: background_color,
        border: background_color,
        inactiveBackground: background_color,
        inactiveForeground: ui_text_color,
        activeForeground: off_white,
    },
    walkThrough: {
        embeddedEditorBackground: background_color,
    },
    peekViewEditor: {
        background: background_color,
        matchHighlightBackground: solid_blue.transparency(65),
    },
    widget: {
        shadow: background_color,
    },
    sideBar: {
        border: strong_shadow,
        background: background_color,
        foreground: ui_text_color,
    },
    sideBarSectionHeader: {
        background: background_color,
        border: background_color,
        foreground: off_white,
    },
    # this is the thing on the far left (or right) that has big icons
    activityBar: {
        border: background_color,
        background: background_color,
        dropBackground: solid_blue.transparency(89),
        foreground: off_white,
        activeBackground: scrollbar_color,
    },
    editorHoverWidget: {
        background: background_color,
        border: solid_blue,
    },
    peekViewTitle: {
        background: background_color,
    },
    settings: {
        checkboxBackground: background_color,
        textInputBackground: background_color,
        numberInputBackground: background_color,
        dropdownBackground: background_color,
        headerForeground: accent_color,
        modifiedItemIndicator: accent_color,
        checkboxForeground: off_white,
        textInputForeground: off_white,
        numberInputForeground: off_white,
        dropdownForeground: off_white,
    },
    breadcrumb: {
        background: background_color,
        foreground: ui_text_color.darken(10),
        activeSelectionForeground: dim_green,
        focusForeground: off_white,
    },
    # this is the thing that pops up from the bottom (terminal area)
    panel: {
        border: weak_shadow,
        background: background_color,
        dropBackground: off_white,
    },
    debugToolBar: {
        background: background_color,
    },
    editorWidget: {
        background: background_color,
        resizeBorder: dim_green,
    },
    debugExceptionWidget: {
        background: background_color,
        border: solid_blue,
    },
    editorMarkerNavigation: {
        background: background_color,
    },
    dropdown: {
        background: background_color,
        border: solid_blue,
        foreground: off_white.transparency(20),
    },
    editorOverviewRuler: {
        # the left border of the scrollbar for some reason
        border: solid_blue.transparency(100),
        commonContentForeground: solid_blue,
        incomingContentForeground: solid_blue,
        currentContentForeground: solid_blue,
    },
    editorBracketMatch: {
        background: solid_blue,
        border: solid_blue,
    },
    panelTitle: {
        activeBorder: solid_blue,
        inactiveForeground: ui_text_color.transparency(50),
        activeForeground: off_white,
    },
    # this is the thing that contains all the tabs
    editorGroup: {
        dropBackground: solid_blue.transparency(45),
        border: hover_background,
        background: background_color,
    },
    merge: {
        incomingHeaderBackground: solid_blue.transparency(65),
        currentHeaderBackground: solid_blue.transparency(65),
    },
    button: {
        hoverBackground: solid_blue,
        background: solid_blue.transparency(80),
        foreground: off_white.transparency(20),
    },
    # command-pallet top-panel etc
    quickInput: {
        # change this back to (below) after this has been fixed: https://github.com/microsoft/vscode/issues/72952 
        #   # foreground: ui_text_color,
        #   # focusForeground: off_white,
        foreground: off_white
    },
    peekView: {
        border: solid_blue,
    },
    badge: {
        background: solid_blue,
        foreground: off_white,
    },
    editorSuggestWidget: {
        foreground: editor_text_color,
        background: hover_background,
        
        border: hover_background,
        selectedBackground: solid_blue,
        highlightForeground: off_white,
    },
    extensionButton: {
        prominentBackground: solid_blue.transparency(80),
        prominentHoverBackground: solid_blue,
        prominentForeground: off_white.transparency(20),
    },
    peekViewResult: {
        matchHighlightBackground: solid_blue.transparency(65),
        background: hover_background,
        selectionBackground: editor_selection_color.transparency(70),
        fileForeground: off_white,
        lineForeground: off_white,
        selectionForeground: off_white,
    },
    activityBarBadge: {
        background: solid_blue,
        foreground: off_white,
    },
    editorWhitespace: {
        foreground: hover_background,
    },
    
    # the whitespace-like vertical lines showing levels of indent
    editorIndentGuide: {
        background: hover_background,
        activeBackground: hover_background,
    },
    notifications: {
        background: hover_background,
        foreground: off_white.transparency(20),
    },
    pickerGroup: {
        border: hover_background,
        foreground: light_purple,
    },
    breadcrumbPicker: {
        background: hover_background,
    },
    editorRuler: {
        foreground: hover_background
    },
    input: {
        border: input_box_background,
        background: input_box_background,
        foreground: off_white.transparency(20),
        placeholderForeground: off_white.transparency(20),
    },
    editorLineNumber: {
        foreground: ui_text_color.darken(10),
        activeForeground: off_white,
    },
    inputValidation: {
        infoBorder:        light_blue,
        infoBackground:    light_blue,
        errorBorder:       error_red,
        errorBackground:   error_red,
        warningBorder:     yellow,
        warningBackground: yellow,
    },
    peekViewTitleDescription: {
        foreground: ui_text_color,
    },
    textLink: {
        foreground: dim_green,
        activeForeground: off_white,
    },
    notificationLink: {
        foreground: dim_green,
    },
    progressBar: {
        background: dim_green,
    },
    selection: {
        background: editor_selection_color.transparency(53),
    },
    diffEditor: {
        insertedTextBackground: lime.transparency(79),
        insertedTextBorder: lime.transparency(100),
        removedTextBackground: error_red.transparency(79),
        removedTextBorder: error_red.transparency(100),
    },
    editorGutter: {
        addedBackground: lime,
        modifiedBackground: yellow,
        deletedBackground: red,
    },
    sideBarTitle: {
        foreground: off_white,
    },
    editorLink: {
        activeForeground: off_white,
    },
    peekViewTitleLabel: {
        foreground: off_white,
    },
    inputOption: {
        activeBorder: off_white.transparency(20),
    },
    peekViewEditorGutter: {
        background: off_white.transparency(5),
    },
    editorMarkerNavigationError: {
        background: error_red,
    },
    editorError: {
        foreground: error_red,
    },
    editorCursor: {
        foreground: cursor_color,
    },
    editorWarning: {
        foreground: yellow,
    },
    editorCodeLens: {
        foreground: yellow,
    },
    editorMarkerNavigationWarning: {
        background: yellow,
    },
    errorForeground: yellow,
}
end

# 
# Language-specific
# 
    def language_source(sources, groups_hashmap)
        return groups_hashmap.transform_values! do |each_group|
            result = []
            for each_source in sources
                result += each_group.flatten.map do |each_pattern|
                    "#{each_source} #{each_pattern}"
                end
            end
            result
        end
    end
    # javascript
        javascript = language_source ["source.js"], {
            this: [
                "variable.language.this",
            ],
            member_access_operator: [
                "punctuation.accessor",
            ],
            variable_no_member_access: [
                "variable.other.readwrite",
            ],
            class_first_property: [
                "support.class"
            ],
            class: [
                "entity.name.type.class"
            ],
            first_property: [
                "variable.other.object",
            ],
            member_shorthand: [
                "variable.other.readwrite meta.object.member meta.objectliteral",
            ],
            middle_property: [
                "meta.object-literal.key",
                "variable.other.object.property",
                "variable.other.constant.object.property",
                "support.variable.property",
                # "punctuation.accessor.js",
                # "meta.array.literial variable.other.readwrite.js",
                # "punctuation.definition.group.js",
                # "variable.other.object",
                # "variable.other.property.js",
                # "variable.other.object.property.js",
                # "meta.object-literal.key.js",
                # "meta.method.declaration.js meta.brace.square.js",
                # "variable.other.constant.property.js",
                # "support.variable.property.process.js",
            ],
            last_property: [
                "variable.other.property",
                "variable.other.constant.property",
                # "meta.method.declaration.js support.function.dom",
                # "meta.method.declaration.js entity.name.function",
                # "support.variable.property.dom", 
                # "support.variable.property.dom",
                # "support.function.dom",
            ],
            globals: [
                "support.variable.other.object.node",
                "support.type.object.module",
            ],
            member_function_definition: [
                "meta.object.member entity.name.function",
            ],
            function_property: [
            ],
        } 
    # typescript
        typescript = language_source ["source.ts"], {
            first_property: [ "variable.other.object" ],
            middle_property: [
                "meta.object-literal.key",
                "variable.other.object.property",
            ],
            accessor: [ "punctuation.accessor"],
            constants: [ "variable.other.constant" ]
        }
    # vue
        vue = language_source ["source.vue"], {
            template_tags: [
                "meta.tag entity.name.tag",
                "meta.tag punctuation.definition.tag",
            ],
            attributes: [
                "entity.other.attribute-name.html",
                "punctuation.definition.string.begin.html",
                "punctuation.definition.string.end.html",
                "meta.tag", # bad hack to color the un-tagged ='s 
            ],
            main_tags: [
                "entity.name.tag",
                "punctuation.definition.tag",
            ]
        }
    # ruby
        ruby = language_source ["source.ruby"], {
            symbols: [
                "punctuation.definition.symbol.begin",
                "punctuation.definition.symbol.end",
                "constant.language.symbol punctuation.definition.constant",
            ],
            globals: [
                "variable.other.readwrite.global.ruby",
                "variable.other.readwrite.global.ruby punctuation.definition.variable.ruby",
            ]
        }
    # Yaml
        yaml = language_source ["source.yaml"], {
            anchors: [
                "punctuation.definition.anchor",
                "entity.name.type.anchor",
            ],
            alias: [
                "punctuation.definition.alias",
                "variable.other.alias",
            ],
            punctuation: [
                "constant.language.merge"
            ]
        }
    # Perl
        perl = language_source ["source.perl"], {
            scalar: [ 
                "variable.other.scalar",
                "punctuation.definition.variable.scalar",
            ],
            array: [ 
                "variable.other.array",
                "punctuation.definition.variable.array",
            ],
            hash: [ 
                "variable.other.hash",
                "punctuation.definition.variable.hash",
            ],
            subpattern: [
                "variable.other.subpattern",
                "variable.other.subpattern punctuation.definition.variable",
            ],
            reference: [
                "variable.other.scalar.reference",
                "punctuation.definition.variable.scalar.reference",
                "variable.other.array.reference",
                "punctuation.definition.variable.array.reference",
                "variable.other.hash.reference",
                "punctuation.definition.variable.hash.reference",
            ],
            vars: [
                "variable.other.readwrite.global",
                "punctuation.definition.variable",
            ],
            globals: [
                "variable.other.readwrite.global.special punctuation.definition.variable",
                "variable.other.readwrite.global.special",
            ]
        }
    # C++
        cpp = language_source ["source.cpp"], {
            assembly_function: [
                "storage.type.asm",
                "punctuation.section.parens.begin.bracket.round.assembly",
                "punctuation.section.parens.end.bracket.round.assembly",
            ],
            assembly_punctuation: [
                "meta.asm meta.encoding",
                "punctuation.definition.string.begin.assembly",
                "punctuation.definition.string.end.assembly",
            ],
            body_parameters: [
                "variable.parameter",
            ],
            parameters: [
                "meta.lambda.capture variable.parameter",
                "meta.function.definition.parameters.lambda variable.parameter",
                "meta.head.function.definition variable.parameter",
                "meta.function.definition.parameters.lambda"
            ],
            types: [
                "storage.modifier",
                "support.type.posix-reserved",
                "storage.type.return-type",
                "storage.type.primitive",
                "storage.type.c",
                "storage.type.user-defined",
            ],
        }
    # shell
        shell = language_source ["source.shell"], {
            seperator: [
                "punctuation.separator.statement",
                "keyword.operator.pipe",
            ],
            builtin: [
                "support.function.builtin",
            ],
            variables: [
                "source.shell variable.other.normal.shell",
                "variable.other.normal.shell punctuation.definition.variable.shell",
                "variable.other.positional.shell",
                "variable.other.positional.shell punctuation.definition.variable.shell",
                "variable.other.special.shell punctuation.definition.variable.shell",
                "variable.other.special.shell",
            ]
        }
    # powershell
        powershell = language_source ["source.powershell"], {
            variables: [
                "variable.other.readwrite",
                "punctuation.definition.variable",
            ],
            constants: [
                "support.constant.variable",
                "support.constant.variable punctuation.definition.variable",
            ],
        }
    # regex
        regex = {
            group: [
                "punctuation.definition.group"
            ],
            thing_1: [
                "string.regexp.group punctuation.definition.group",
                "punctuation.definition.character-class",
            ]
        }
    # css
        css = {
            operator_like: [
                "source.css entity.name.tag",
            ],
            class_name: [
                "entity.other.attribute-name.class.css",
                "entity.other.attribute-name.class.pug",
            ]
        }
        css_properties = [
            "source.css support.type.property-name",
            "source.sass support.type.property-name",
            "source.scss support.type.property-name",
            "source.less support.type.property-name",
            "source.stylus support.type.property-name",
            "source.postcss support.type.property-name",
            "source.css support.type.vendored.property-name",
        ]
        css_property_value = [
            "support.constant.property-value.css",
        ]
        css_classes_group = [
            "entity.other.attribute-name.class",
        ]
        css_ids_group = [
            "source.sass keyword.control",
        ]
        url_group = [
            "*url*",
            "*link*",
            "*uri*",
        ]
    # json
        def json_depth(amount)
            return "source.json" + " meta.structure.dictionary.json"*amount
        end
        def embedded_json_depth(amount)
            return "meta.embedded.block.json" + " meta.structure.dictionary.json"*amount
        end
        def embedded_jsonc_depth(amount)
            return "meta.embedded.block.jsonc" + " meta.structure.dictionary.json"*amount
        end
        def json_key(number)
            return [
                # normal json
                "#{json_depth(number)} support.type.property-name",
                "#{json_depth(number)} punctuation.support.type.property-name",
                "#{json_depth(number)} punctuation.separator.dictionary.key-value",
                # embedded json
                "#{embedded_json_depth(number)} support.type.property-name",
                "#{embedded_json_depth(number)} punctuation.support.type.property-name",
                "#{embedded_json_depth(number)} punctuation.separator.dictionary.key-value",
                # embedded jsonc
                "#{embedded_jsonc_depth(number)} support.type.property-name",
                "#{embedded_jsonc_depth(number)} punctuation.support.type.property-name",
                "#{embedded_jsonc_depth(number)} punctuation.separator.dictionary.key-value",
            ]
        end
        json = {
            punctuation: [
                "source.json punctuation.separator",
                "source.json punctuation.definition.dictionary"
            ],
            numbers: [
                "source.json constant.numeric",
            ],
            literalWords: [
                "source.json constant.language",
            ],
            keys: [
                json_key(1),
                json_key(2),
                json_key(3),
                json_key(4),
                json_key(5),
                json_key(6),
                json_key(7),
                json_key(8),
                json_key(9),
            ]
        }
    # coffeescript
        coffeescript = language_source ["source.coffee"], {
            this: [
                "variable.language.this",
            ],
            function: [
                "meta.function-call entity.name.function",
            ],
            method: [
                "meta.method-call entity.name.function",
                "meta.method-call support.function",
                "punctuation.separator.method",
            ],
            support: [
                "support.class",
            ],
            normal_punctuation: [
                # coffeescript missnamed its ()'s
                "meta.brace.round.coffee"
            ]
        }
    # markdown
        markdown = {
            plain: [
                "text.html.markdown",
                "punctuation.definition.list_item.markdown",
            ],
            paragraph: "meta.paragraph.markdown",
            heading: [
                "punctuation.definition.heading.markdown",
                "entity.name.section.markdown",
                "markup.heading",
                "markup.heading.setext",
                "punctuation.definition.bold"
            ],
            heading1: "heading.1 entity.name.section.markdown",
            heading2: "heading.2 entity.name.section.markdown",
            heading3: "heading.3 entity.name.section.markdown",
            heading4: "heading.4 entity.name.section.markdown",
            heading5: "heading.5 entity.name.section.markdown",
            heading6: "heading.6 entity.name.section.markdown",
            general_punctuation: [
                "punctuation.definition.markdown",
                "punctuation.definition.math.display.markdown",
                "punctuation.definition.math.inline.markdown",
            ],
            bold: [
                "punctuation.definition.bold",
                "markup.bold.markdown"
            ],
            italic: [
                "markup.italic.markdown",
                "punctuation.definition.italic",
            ],
            code: [
                "markup.fenced_code.block.markdown",
                "markup.inline.raw.string.markdown",
                "markup.raw.block",
                "punctuation.definition.raw",
            ],
            block_quote_punctuation: [
                "punctuation.definition.quote.begin.markdown"
            ],
            language_code: [ # like code, but probably shouldn't be colored since it has a language attached to it
                "markup.fenced_code.block.markdown meta.embedded.block",
            ],
            list_symbol: [
                "punctuation.definition.list.begin.markdown",
            ],
            link_punctuation: [
                "punctuation.definition.string.begin.markdown",
                "punctuation.definition.string.end.markdown",
                "punctuation.definition.metadata.markdown",
                "markup.underline.link",
            ],
            url: [
                "string.other.link.title.markdown",
            ],
            image: [
                "string.other.link",
            ],
            reference: [
                "constant.other.reference.link.markdown",
                "punctuation.definition.constant.begin.markdown",
                "punctuation.definition.constant.end.markdown",
                "punctuation.definition.constant.markdown",
            ],
            seperator: [
                "meta.separator.markdown",
            ],
            string: [
                "string.other.link.description.title.markdown punctuation.definition.string.end.markdown",
                "string.other.link.description.title.markdown punctuation.definition.string.begin.markdown",
                "punctuation.definition.string.markdown",
                "string.other.link.description.title.markdown",
            ],
            function: [
                "punctuation.definition.function.katex",
                "support.function.katex",
            ]
        }
    # gitignore
        gitignore = {
            negated: [
                "line.negated.ignore"
            ]
        }
    # c-sharp
        c_sharp = language_source ["source.cs"], {
            documentation_tags: [
                "comment.block.documentation entity.name.tag",
                "comment.block.documentation punctuation.definition.tag",
            ],
            documentation_attributes: [
                "comment.block.documentation entity.other.attribute-name",
            ],
            documentation_punctuation: [
                "comment.block.documentation punctuation.definition.string.begin",
                "comment.block.documentation punctuation.definition.string.end",
                "comment.block.documentation punctuation.separator.equals",
            ],
            documentation_strings: [
                "comment.block.documentation string.quoted.double"
            ],
            documentation_content: [
                "comment.block.documentation",
            ],
            storage_modifiers: [
                "storage.modifier",
            ],
            get_and_set: [
                "keyword.other.get",
                "keyword.other.set",
            ]
        }
    # python
        python = language_source [ "source.python", "source.cython", ], {
            functions: [
                "meta.function-call.generic",
            ],
            magic: [
                "support.function.magic",
                "support.variable.magic",
            ],
            docstring: [
                "string.quoted.docstring punctuation.definition.string.begin",
                "string.quoted.docstring punctuation.definition.string.end",
            ],
            constants: [
                "constant.other.caps",
            ],
            decorators: [
                "entity.name.function.decorator",
                "punctuation.definition.decorator",
                "meta.function.decorator punctuation.definition.arguments.begin",
                "meta.function.decorator punctuation.definition.arguments.end",
            ],
            literal_keyword: [
                "constant.language",
            ],
            normal_punctuation: [
                "punctuation.separator.colon",
                "punctuation.section.function.begin",
            ],
            dictionary: [
                "punctuation.definition.dict.begin.python",
                "punctuation.definition.dict.end.python",
                "punctuation.definition.list.begin.python",
                "punctuation.definition.list.end.python",
                
                "punctuation.definition.dict.begin.cython",
                "punctuation.definition.dict.end.cython",
                "punctuation.definition.list.begin.cython",
                "punctuation.definition.list.end.cython",
            ],
            parameters: [
                "variable.parameter.function.language.python",
                
                "variable.parameter.function.language.cython",
            ]
        }
    # Latex
        latex = language_source ["text.tex.latex", "source.latex" ], {
            unimportant: [
                "support.class.math.block constant.character.escape punctuation.definition.keyword",
                "support.class.math constant.character.escape punctuation.definition.keyword",
            ],
            control_flow_like: [
                "keyword.other.item punctuation.definition.keyword.latex",
                "keyword.control.ref punctuation.definition.keyword.latex",
                "meta.reference.label punctuation.definition.arguments.begin",
                "meta.reference.label punctuation.definition.arguments.end",
            ],
            special_function: [
                "punctuation.definition.optional.arguments",
                "storage.type.function punctuation.definition.function",
                "keyword.control.preamble punctuation.definition.function",
                "punctuation.definition.begin",
                "punctuation.definition.end",
                "keyword.control.preamble",
                "meta.preamble punctuation.definition.arguments.begin",
                "meta.preamble punctuation.definition.arguments.end",
            ],
            parameter: [
                "variable.parameter.function"
            ],
            named_parameter: [
                "variable.parameter",
                "markup.raw",
            ],
            function_like: [
                "keyword.control.label",
                "punctuation.definition",
                "punctuation.definition.function",
                "punctuation.support.function.begin",
                "punctuation.support.function.end",
                "punctuation.bracket.curly.begin.unknown",
                "punctuation.bracket.curly.end.unknown",
            ],
            math_punctuation: [
                "constant.character.escape",
                "constant.character.math",
                "constant.character.math punctuation.definition.constant.math",
            ],
            math_symbols: [
                "punctuation.definition.string.end",
                "punctuation.definition.string.begin",
                "punctuation.math.begin.bracket.curly",
                "punctuation.math.end.bracket.curly",
            ],
            math_support: [
                "support.class.math constant.character.math",
                "support.class.math.block constant.character.math",
                "support.class.math constant.character.math punctuation.definition.constant.math",
                "support.class.math punctuation.definition",
                "support.class.math constant.other.math",
                "support.class.math constant.other.general.math punctuation.definition.constant.math",
                "support.class.math constant.other.general.math",
            ],
            math_keyterm: [
                "support.class.math punctuation.special"
            ],
            main_sections: [
                "variable.parameter.definition.label",
                "entity.name.section",
            ],
            bold: [
                "markup.bold.textbf"
            ],
            italic: [
                "markup.italic"
            ],
            support_function: [
                "meta.support.function",
            ],
            special_math_punctuation: [
                "support.class.math.block",
                "support.class.math.block punctuation.math.begin.bracket.round",
                "support.class.math.block punctuation.math.end.bracket.round",
                "support.class.math.block constant.numeric.math",
                "support.class.math",
                "support.class.math punctuation.math.begin.bracket.round",
                "support.class.math punctuation.math.end.bracket.round",
                "support.class.math constant.numeric.math",
                
                "support.class.math punctuation.definition.brackets",
                "support.class.math.block constant.character.escape",
                "support.class.math constant.character.escape",
            ],
            key_punctuation: [
                "keyword.control.newline",
                "keyword.control.table.newline",
                "punctuation.special",
                "keyword.control.table",
                "keyword.control.equation",
            ],
            reference: [
                "constant.other.reference"
            ],
        }
#
# Code Groups
#

    invalid_things = [
        "invalid",
        "invalid.illegal",
        "invalid.deprecated",
    ]
    comments = [
        "comment",
        "comment.line.double-slash",
        "punctuation.definition.comment",
    ]
    dictionary_keys = [
        "punctuation.definition.constant.hashkey", # the ruby : for hashkeys in function parameters
        "constant.language.symbol.hashkey", # the ruby syntax changed
    ]
    # 
    # Variables
    # 
        normal_variables = [
            "variable",
            "variable.other",
            "variable.other.readwrite",
            "variable.assignment.coffee",
            "variable.other.readwrite.ts",
            "variable.other.readwrite.js",
            "variable.other.readwrite.global",
            "variable.other.member", # used by the c++ extension for members that are not being accessed
            "source.cs entity.name.variable.local", # c-sharp has bad nameing
        ]
        parameter_variables = [
            "variable.parameter",
            "variable.parameter.function",
            "variable.parameter.function.language.python",
            "variable.parameter.function.coffee",
            "source.cs entity.name.variable.parameter",
        ]
        instance_variables = [
            "variable.other.readwrite.instance",
            "punctuation.definition.variable.ruby",
        ]
        class_variables = [
            "source.ruby variable.other.readwrite.class", # class members in ruby
        ]
        first_property = [
            "variable.other.object.ts",
            "variable.other.object.coffee",
            "variable.other.object.access",
            "source.vue variable.other.object",
            "variable.other.constant.object",
            "source.cs variable.other.object",
        ]
        middle_property = [
            "support.variable.property",
            "variable.other.object.property",
        ]
        last_property = [
            "variable.other.property",
            "source.vue variable.other.property",
        ]
        constants = [
            "variable.other.constant",
            "constant.other.php",
            "source.cpp constant.language",
            python[:constants],
        ]
        globals = [
            "variable.other.readwrite.global.special punctuation",
            "variable.other.readwrite.global.special",
            "variable.other.readwrite.global.pre-defined",
            ruby[:globals],
            javascript[:globals],
        ]
        # mostly self-reference but occasionally other stuff
        special_variables = [
            "variable.language",
            "variable.language.this",
            "variable.language.self",
            "variable.language.super",
        ]
        # the "misc" variables that are colored different than the special variables
        unusual_variables = [
            # yaml aliases
            "source.dockerfile variable.other",
            "variable.other.predefined",
            "source.perl variable.other.predefined punctuation.definition.variable",
            "variable.other.macro.argument", # C++ macro arguments
        ]
        self_reference = [
            "variable.language.this",
            "variable.language.self",
            "keyword.other.this", # C-sharp
        ]
    # 
    # Functions
    # 
        functions = [
            "entity.name.function",
            "variable.function",
            "support.function",
            "entity.name.command",
            "keyword.other.special-method",
            "support.function",
            "keyword.other.special-method",
            "support.function.kernel.ruby",
            "entity.other.attribute-name.js",
            python[:functions],
        ]
        function_punctuation = [
            "punctuation.definition.arguments",
            "punctuation.section.parameters.begin.bracket.round",
            "punctuation.section.parameters.end.bracket.round",
            "punctuation.section.arguments.begin.bracket.round",
            "punctuation.section.arguments.end.bracket.round",
            "punctuation.section.block.begin.bracket.curly.function.definition",
            "punctuation.section.block.end.bracket.curly.function.definition",
            "punctuation.section.arguments.begin.bracket.round.function.member",
            "punctuation.section.arguments.end.bracket.round.function.member",
            "punctuation.definition.parameters.ruby",
            "punctuation.section.function",
            "punctuation.definition.arguments.begin",
            "punctuation.definition.arguments.end",
            "punctuation.definition.parameters.begin",
            "punctuation.definition.parameters.end",
            "storage.type.function.arrow", # arrow functions
            "punctuation.separator.parameter", # commas inside the function
            "punctuation.section.block.function",
            "punctuation.section.arguments",
            "meta.parameter punctuation.separator.delimiter.comma"
        ]
        anonymous_function_punctuation = [
            "source.shell punctuation.definition.group", # brackets in shell function definition
            "punctuation.section.block.begin.bracket.curly.lambda.cpp",
            "punctuation.section.block.end.bracket.curly.lambda.cpp",
        ]
        constructors = [
            "entity.name.function.constructor.cpp",
        ]
    # 
    # tags (jsx/html)
    # 
        tags = [
            "entity.name.tag",
            "punctuation.definition.tag",
            "punctuation.definition.tag source.js", # a fix for screwed up html <script> tags
        ]
        tag_attributes = [
            "entity.other.attribute-name.html",
            "punctuation.definition.string.begin.html",
            "punctuation.definition.string.end.html",
            "entity.other.attribute-name.tag.pug",
            "entity.other.attribute-name.js",
            "source.vue entity.other.attribute-name",
        ]
    # 
    # literals
    # 
        number_literals = [
            "constant.numeric",
        ]
        value_literals = [
            "constant.language.boolean",
            "constant.language.true",
            "constant.language.false",
            "constant.language.null",
            "constant.language.nil",
            "constant.language.undefined",
        ]
        string_preceders = [
            "storage.type.string"
        ]
        strings = [
            "string",
            "string.unquoted"
        ]
        docstring = [
            "string.quoted.docstring",
            python[:docstring],
        ]
        escape_characters_group = [
            "constant.character.escape",
            "string constant.other.placeholder",
        ]
        regular_expressions_group = [
            "string.regexp",
        ]
        language_literals = [
            "constant.other.symbol", # ruby symbols
            "source.ruby punctuation.definition.constant",
            "constant.other.key", # java keys inside of annotations
        ]
        units = [
            "keyword.other.unit",
            "keyword.control.unit",
            "souce keyword.control.unit",
            "punctuation.separator.constant.numeric",
        ]
    # 
    # Keywords and keyword-ish things
    # 
        control_flow = [
            "keyword.control",
            "keyword.control.conditional",
            "keyword.control.loop",
            "keyword.control.directive",
        ]
        keywords = [
            "keyword",
            "keyword.other",
            "source.dockerfile keyword.other.special-method",
        ]
        import_export_keywords = [
            "support.type.object.module", # module keyword
        ]
        package_names = [
            "entity.name.package"
        ]
    storage_types = [
        "storage.type",
        "keyword.other.typedef",
        "source.go keyword.function",
        "source.go keyword.struct",
        "source.go keyword.var",
        "source.perl storage.modifier",
        "source.cs keyword.other.var",
        "source.cs keyword.other.class",
        "source.cs keyword.other.event",
    ]
    storage_type_punctuation = [
        "punctuation.section.angle-brackets.start.template.definition.cpp",
        "punctuation.section.angle-brackets.end.template.definition.cpp",
        "punctuation.section.arguments.begin.bracket.round.decltype.cpp",
        "punctuation.section.arguments.end.bracket.round.decltype.cpp",
        "punctuation.section.block.begin.bracket.curly.namespace",
        "punctuation.section.block.begin.bracket.curly.struct",
        "punctuation.section.block.begin.bracket.curly.class",
        "punctuation.section.block.begin.bracket.curly.enum",
        "punctuation.section.block.begin.bracket.curly.union",
        "punctuation.section.block.begin.bracket.curly.extern",
        "punctuation.section.block.end.bracket.curly.namespace",
        "punctuation.section.block.end.bracket.curly.struct",
        "punctuation.section.block.end.bracket.curly.class",
        "punctuation.section.block.end.bracket.curly.enum",
        "punctuation.section.block.end.bracket.curly.union",
        "punctuation.section.block.end.bracket.curly.extern",
    ]
    storage_modifiers = [
        "storage.modifier",
        "storage.modifier.lambda",
        "storage.modifier.async",
        "storage.type.modifier.access.control",
        "storage.type.modifier.access",
    ]
    types = [
        "entity.name.type",
        "entity.name.type.class",
        "entity.other.inherited-class",
        "support.type",
        "support.class",
        "storage.type.built-in",
        "source.cs storage.type",
        "source.cs keyword.type",
        "source.go storage.type.string",
        "source.go storage.type",
        "source.c support.type.posix-reserved",
        "support.type.built-in.posix-reserved",
        "storage.type.primitive",
        "storage.type.built-in.primitive",
        "storage.type.primitive",
        "entity.name.type",
        "meta.angle-brackets.cpp",
        "entity.name.type.template.cpp",
        "source.cpp meta.function.definition.parameters",
        cpp[:types],
    ]
    namespace = [
        "entity.name.namespace",
        "support.other.namespace.php",
    ]
    attributes = [
        "entity.other.attribute-name",
        "entity.other.attribute",
    ]
    unknown_entites = [
        "entity.name",
        "entity.other",
    ]
    assignment_operators = [
        "keyword.operator.assignment",
        "meta.embedded.expression keyword.operator.assignment", # for overriding the jsx attribute assignment
        "meta.tag.attributes meta.embedded.expression keyword.operator.assignment", # for overriding the jsx attribute assignment
        "punctuation.definition.keyValuePair.toml",
        "keyword.operator.assignment",
        "source.go keyword.operator.assignment",
    ]
    operators = [
        "keyword.operator",
        "keyword.operator.assignment.coffee", # this is the : 
        "meta.tag.attributes keyword.operator.assignment", # jsx attribute assignment
        "meta.embedded.expression meta.tag.attributes keyword.operator.assignment", # jsx attribute assignment
        "keyword.other.new", # new operator in c-sharp
        # function-like operators
        "punctuation.section.arguments.begin.bracket.round.operator",
        "punctuation.section.arguments.end.bracket.round.operator",
    ]
    member_access_punctuation = [
        "punctuation.accessor"
    ]
    normal_punctuation = [
        "punctuation",
        "punctuation.section.embedded",
        "punctuation.section.scope.begin",
        "punctuation.section.scope.end",
        "meta.brace.round.ts",
        "meta.brace.round.js",
        "meta.block.js",
        "punctuation.definition.block.js",
        "source.cpp punctuation.range-based",
        "source.cpp punctuation.section.parens.begin.bracket.round",
        "source.cpp punctuation.section.parens.end.bracket.round",
        "source.cpp punctuation.section.block.begin.bracket.curly",
        "source.cpp punctuation.section.block.end.bracket.curly",
        "source.shell punctuation.definition.evaluation",
        python[:normal_punctuation],
        coffeescript[:normal_punctuation],
        "storage.modifier.chomping-indicator.yaml", # the | used for multiline blocks
        "punctuation.separator.inheritance.php",
        "punctuation.separator.colon.inheritance",
    ]
    secondary_punctuation = [
        "punctuation.separator", # commas
        # punctuation for embedding javascript inside jsx
        "punctuation.section.embedded.begin.js",
        "punctuation.section.embedded.end.js",
        # gcc attributes
        "punctuation.accessor.attribute",
        "punctuation.section.attribute",
    ]
    special_punctuation = [
        "punctuation.vararg-ellipses",
        "punctuation.separator.readline",
    ]
    boring_punctuation = [
        # the semicolon
        "punctuation.terminator",
        "punctuation.semi.rust",
        # the line-continuation
        "constant.character.escape.line-continuation",
        "punctuation.separator.continuation.line",
        # the -> in the lambda return type
        "punctuation.definition.lambda.return-type",
        # the ::'s
        "punctuation.separator.scope-resolution",
        # lambda capture
        "punctuation.definition.capture",
        "meta.lambda.capture punctuation.separator.delimiter.comma",
        # everything leading up to a scope resolution
    ]
    interpolated_punctuation = [
        "punctuation.definition.template-expression.begin",
        "punctuation.definition.template-expression.end",
        "punctuation.section.embedded.end",
        "punctuation.section.embedded.begin",
        "constant.character.format.placeholder.other",
    ]
    colors_group = [ # like css/html colors
        "constant.other.color",
    ]
    default_text_color = [
        "source"
    ]
    unimportant = [
    ]


#
# need to fix (unsorted code)
#
blue_bold_group = [
    "punctuation.definition.parameters.begin.lambda",
    "punctuation.definition.parameters.end.lambda",
]
dim_green_group = [
    "meta.brace.curly.coffee",
    "meta.brace.square.ts",
    "source.cpp meta.block variable.other",
    "source.cpp keyword.operator.overload",
    "variable.other.property.coffee",
    "punctuation.definition.dictionary",
    "punctuation.section.property-list",
    python[:dictionary],
    "punctuation.definition.begin.bracket.square",
    "punctuation.definition.end.bracket.square",
    "string.regexp",
    "meta.objectliteral.js",
    "meta.brace.square",
]
dim_green_with_underline_group = [
    "punctuation.separator.dot-access.c",
    "punctuation.separator.property.period.coffee",
    "variable.other.property.coffee",
    "variable.other.property.ts",
    "source.ruby constant.language.symbol punctuation.definition.constant.hashkey",
    "source.ruby constant.language.symbol.hashkey.ruby",
    "source.ruby constant.language.symbol.hashkey",
    "source.cpp variable.other.object",
    "source.cpp punctuation.separator.dot-access",
    "source.cpp punctuation.separator.pointer-access",
    "source.cpp support.type.posix-reserved",
    "support.type.property-name.css",
    "entity.name.tag.yaml",
    "meta.array.literal string.quoted",
    "meta.object-literal.key string.quoted",
    "meta.object-literal.key.js variable.other.readwrite.js - meta.var.expr",
]
green_group = [
    "meta.encoding",
    "constant.other.option",
    "punctuation.definition.string.begin",
    "punctuation.definition.string.end",
    "keyword.other.special-method.ruby",
    "entity.name",
    "string.regexp",
    "punctuation.section.regexp",
    "punctuation.separator.variable.ruby",
    "punctuation.section.array.begin",
    "punctuation.section.array.end",
    "meta.fstring storage.type.string",
    "punctuation.definition.string.begin",
    "punctuation.definition.string.end",
    "punctuation.definition.string.begin string.quoted.single",
    "punctuation.definition.string.end string.quoted.single",
    "string.regexp punctuation.definition.string.begin",
    "string.regexp punctuation.definition.string.end",
    "punctuation.definition.string.begin",
    "punctuation.definition.string.end",
    "punctuation.definition.string.template.begin",
    "punctuation.definition.string.template.end",
    "variable.parameter.registers",
]
green_bold_group = [
    "string.regexp punctuation.definition.string",
    "keyword.other.unit.user-defined.cpp",
    "punctuation.section.parens.begin.bracket.round.assembly.inner",
    "punctuation.section.parens.end.bracket.round.assembly.inner",
]
lime_green_group = [
    "string.quoted",
    "string.template",
    "string.interpolated",
    "string.quoted.double",
    "string.quoted.single",
    "meta.structure.dictionary.value.json string.quoted.double",
    "meta.jsx.children",
    "punctuation.section.regexp",
    "storage.type.string",
    "string.regexp punctuation.definition.string.begin",
    "string.regexp punctuation.definition.string.end",
    "support.constant.color",
    "constant.other.color",
    "constant.other.color.rgb-value",
    "source.shell string.quoted.single",
    "source.shell string.unquoted.argument",
    "source.shell string.quoted.double",
]
orange_group = [
    "constant.other",
    "constant.other.decimal",
    "punctuation.separator.variable.ruby",
    "source.cpp meta.function.constructor.initializer-list.cpp entity.name.function",
    "source.cpp meta.function.constructor.initializer-list.cpp punctuation.section.parameters.begin.bracket.round",
    "source.cpp meta.function.constructor.initializer-list.cpp punctuation.section.parameters.end.bracket.round",
    "keyword.other.unit",
    "variable.other.normal.shell",
    "constant.language",
    "constant.language.symbol",
]
orange_underline_group = [
    "source.shell variable.parameter.positional.shell",
    "source.shell variable.parameter.positional",
    "source.shell variable.parameter.positional.shell punctuation.definition.variable.shell",
    "source.shell variable.parameter.positional punctuation.definition.variable.shell",
    "source.shell punctuation.definition.variable",
    "meta.function.method.with-arguments constant.language.symbol.hashkey.parameter.function",
    "constant.other.character-class.regexp",
]
yellow_cursive_group = [
    "text.haml entity.other.attribute-name.id",
    "support.variable.dom",
    "entity.name.tag.css",
    "support.function.magic.python",
    "support.type.python",
    "support.class.builtin.js",
    "support.constant.math",
    "storage.modifier.glsl",
]

#
# Mapping
#

mapping = ->() do {
    white => {
        normal: [
            colors_group,
        ],
    },
    gray => {
        normal: [
            boring_punctuation,
            unimportant,
            markdown[:link_punctuation],
            c_sharp[:documentation_punctuation],
            latex[:unimportant],
        ],
        italic: [
            comments,
        ],
        bold: [
            c_sharp[:documentation_tags],
        ],
        underline: [
            c_sharp[:documentation_attributes],
        ],
    },
    light_gray => {
        normal: [
            markdown[:paragraph],
            markdown[:language_code],
            markdown[:plain],
            normal_variables,
            css_properties,
            default_text_color,
            javascript[:variable_no_member_access],
            cpp[:body_parameters],
        ],
        underline: [
            first_property,
            javascript[:first_property],
        ],
    },
    yellow => {
        normal: [
            css_classes_group,
            json[:keys][1],
            python[:decorators],
            package_names,
            powershell[:constants],
            vue[:template_tags],
            constants,
            types,
            [
                "source.go entity.name.package",
                "meta.tag.js",
                "entity.name.tag.js",
                "support.class.component.js",
                "punctuation.definition.tag.begin.js",
                "punctuation.definition.tag.end.js",
                "support.class",
                "support.constant.json",
                "keyword.label.assembly",
                "entity",
                "entity.other.attribute-name.id.pug",
            ],
        ],
        italic: [
            yellow_cursive_group,
        ],
        underline: [
            shell[:variables],
            constructors,
            unusual_variables,
            perl[:globals],
            yaml[:anchors],
            javascript[:class_first_property],
            coffeescript[:support],
            latex[:main_sections],
        ],
        bold: [
            markdown[:heading],
            
        ]
    },
    no_color => {
        italic: [
            keywords,
            perl[:reference],
        ],
        underline: [
            url_group,
        ],
        normal: [
        ],
        strike: [
        ],
        bold: [
        ],
    },
    light_blue => {
        normal: [
            keywords,
            json[:punctuation],
            import_export_keywords,
            normal_punctuation,
            regular_expressions_group,
            css_property_value,
            interpolated_punctuation,
            latex[:control_flow_like],
        ],
        bold: [
        ],
        underline: [
            markdown[:url],
            c_sharp[:get_and_set],
        ]
    },
    blue => {
        normal: [
        ],
        italic: [
            function_punctuation,
        ],
        underline: [
            functions,
            coffeescript[:function],
            css_ids_group,
            json[:keys][3],
            regex[:group],
            regex[:thing_1],
            cpp[:assembly_punctuation],
            latex[:function_like],
            css[:class_name],
            last_property,
            javascript[:function_property],
            javascript[:member_function_definition],
            coffeescript[:method],
            shell[:builtin],
            [
                "entity.name.function.member",
                "meta.object-literal.key.js entity.name.function",
            ],
        ],
        bold: [
            *blue_bold_group,
        ],
    },
    orange => {
        normal: [
            parameter_variables,
            cpp[:parameters],
            
            orange_group,
            language_literals,
            markdown[:function],
            ruby[:symbols],
            latex[:math_symbols],
        ],
        italic: [
            
        ],
        underline: [
            markdown[:reference],
            orange_underline_group,
            escape_characters_group,
            latex[:math_support],
        ],
        bold: [
            value_literals,
            python[:literal_keyword],
            json[:literalWords],
            latex[:math_keyterm],
            python[:magic],
        ],
    },
    lime => {
        normal: [
            strings,
            json[:keys][8],
            lime_green_group,
            markdown[:string],
            latex[:support_function],
        ],
        italic: [
            latex[:italic],
        ],
        underline: [
        ],
    },
    rust => {
        normal: [
            json[:keys][6],
            c_sharp[:storage_modifiers],
            typescript[:constants],
        ],
    },
    dark_slate => {
        normal: [
        ],
        italic: [
            control_flow,
        ],
        underline: [  
        ],
        bold: [
        ],
    },
    light_slate => {
        normal: [
            markdown[:code],
            c_sharp[:documentation_content],
        ],
        underline: [
            perl[:array],
        ],
    },
    pink => {
        normal: [
            namespace,
            storage_type_punctuation,
            storage_modifiers,
            anonymous_function_punctuation,
            json[:keys][4],
            latex[:special_function],
        ],
        underline: [
        ],
        bold: [
            cpp[:assembly_function],
        ],
        italic: [
            markdown[:italic],
        ]
    },
    light_purple => {
        normal: [
            storage_types,
            attributes,
            operators,
            secondary_punctuation,
            yaml[:punctuation],
            css[:operator_like],
            json[:keys][0],
        ],
        italic: [
            tag_attributes,
            vue[:attributes],
            attributes,
        ],
        underline: [
            latex[:parameter],
        ],
        bold: [
            markdown[:general_punctuation],
            markdown[:seperator],
            markdown[:block_quote_punctuation],
            special_punctuation,
            shell[:seperator],
        ],
    },
    dim_green => {
        normal: [
            dim_green_group,
            markdown[:image],
        ],
        underline: [
            dim_green_with_underline_group,
            dictionary_keys,
            member_access_punctuation,
            middle_property,
            javascript[:middle_property],
            typescript[:middle_property],
            javascript[:member_access_operator],
            javascript[:last_property],
            perl[:scalar],
            perl[:vars],
            powershell[:variables],
            latex[:math_punctuation],
        ],
        italic: [
            javascript[:member_shorthand],
        ],
    },
    green => {
        normal: [
            green_group,
            string_preceders,
            unknown_entites,
            c_sharp[:documentation_strings],
            json[:keys][2],
            latex[:named_parameter],
        ],
        underline: [
            perl[:hash],
        ],
        bold: [
        ]
    },
    vibrant_green => {
        bold: [
            markdown[:bold],
            markdown[:list_symbol],
        ]
    },
    bold_green => {
        bold: [
            green_bold_group,
            latex[:bold],
        ],
    },
    bananna_yellow => {
        normal: [
            units,
            json[:keys][5],
            yaml[:alias],
        ],
        underline: [
            globals,
            latex[:reference],
            [
                "support.variable",
            ]
        ],
    },
    red => {
        normal: [
            invalid_things,
            assignment_operators,
            latex[:special_math_punctuation],
            [
                "source.ruby meta.function.method.with-arguments punctuation.definition.constant.hashkey",
                "variable.language.special.self.python",
                "variable.parameter.function.language.special.self.python",
            ],
        ],
        bold: [
            latex[:key_punctuation],
        ],
        italic: [
            special_variables,
        ],
        underline: [
            self_reference,
            javascript[:this],
            coffeescript[:this],
            [
                "source.shell punctuation.definition.variable",
                "source.shell variable.language.special.wildcard",
                "source.shell variable.language.special.shell punctuation.definition.variable.shell",
                "source.shell variable.language.special.shell",
            ],
        ],
    },
    soft_red => {
        normal: [
            tags,
            gitignore[:negated],
            number_literals,
            instance_variables,
            class_variables,
        ],
        underline: [
            perl[:subpattern],
            vue[:main_tags],
        ],
        italic: [
        ],
        bold: [
        ],
    },
}
end

background_color.replace('#273244') 
background_color.replace('#0a5375')
# two_tone_mapping = mapping[]
# two_tone_ui = ui[]
# two_tone_ui[:quickInput][:background]           = secondary_background_color
# two_tone_ui[:terminal][:ansiBlack]              = secondary_background_color
# two_tone_ui[:statusBar][:background]            = secondary_background_color
# two_tone_ui[:statusBar][:border]                = secondary_background_color
# two_tone_ui[:statusBar][:noFolderBackground]    = secondary_background_color
# two_tone_ui[:statusBar][:noFolderBorder]        = secondary_background_color
# two_tone_ui[:statusBar][:debuggingBorder]       = secondary_background_color
# two_tone_ui[:statusBar][:debuggingBackground]   = secondary_background_color
# two_tone_ui[:sideBar][:background]              = secondary_background_color
# two_tone_ui[:sideBarSectionHeader][:background] = secondary_background_color
# two_tone_ui[:sideBarSectionHeader][:border]     = secondary_background_color
# two_tone_ui[:activityBar][:activeBackground]    = secondary_background_color
# two_tone_ui[:panel][:background]                = secondary_background_color
# 
# Main theme
# 
IO.write("theme-mix-it-up.json", convert_to_json_theme({ name: 'XD Theme - MixItUp', type: 'dark', }, ui, mapping) )