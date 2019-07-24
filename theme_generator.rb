require_relative './theme_generator_generator'

theme_info = {
    name: 'My Theme',
    type: 'dark',
}

#
# Colors
#
white           = '#FFFFFF'
light_gray      = '#c7cbcd'
gray            = '#546E7A'
rust            = '#C17E70'
orange          = '#F78C6C'
yellow          = '#fec355'
bananna_yellow  = '#ddd790'
lime            = '#C3E88D'
teal            = '#4EC9B0'
teal_1          = '#4ec9b0d0'
dim_green       = '#80CBC4'
light_slate     = '#64bac5'
dark_slate      = '#3f848d'
light_blue      = '#89DDFF'
blue            = '#82AAFF'
light_purple    = '#c792eaff'
violet          = '#C792EA'
pink            = '#e57eb3'
red             = '#ff5572'
soft_red        = '#f07178'
no_color        = ''


#
# UI Colors
#
ui = {
    menu: {
        selectionBackground: '#00000050',
        selectionBorder: '#00000030',
        background: '#242938',
        selectionForeground: '#80CBC4',
        foreground: '#EEFFFF',
        separatorBackground: '#EEFFFF',
    },
    menubar: {
        selectionBackground: '#00000030',
        selectionBorder: '#00000030',
        selectionForeground: '#80CBC4',
    },
    listFilterWidget: {
        noMatchesOutline: '#00000030',
        outline: '#00000030',
        background: '#00000030',
    },
    gitDecoration: {
        modifiedResourceForeground: '#0c6ce1ca',
        ignoredResourceForeground: '#708aa190',
        untrackedResourceForeground: '#a9c77dff',
        deletedResourceForeground: '#EF535090',
        conflictingResourceForeground: '#FFEB95CC',
    },
    editor: {
        findMatchHighlightBorder: '#11729f',
        findMatchHighlightBackground: '#11729f',
        background: '#242938',
        rangeHighlightBackground: '#2670a15a',
        hoverHighlightBackground: '#2670a15a',
        inactiveSelectionBackground: '#2670a15a',
        lineHighlightBackground: '#2d3e51',
        wordHighlightBackground: '#83b2e1b3',
        selectionHighlightBackground: '#83b2e1b3',
        wordHighlightStrongBackground: '#83b2e1b3',
        selectionBackground: '#83b2e157',
        foreground: '#bfc9d5',
        findMatchBackground: '#ff9900a1',
        findMatchBorder: '#ff9900',
    },
    tab: {
        activeBackground: '#184967',
        border: '#184967',
        inactiveBackground: '#184967',
        unfocusedActiveBorder: '#242938',
        activeModifiedBorder: '#607a86',
        activeBorder: '#C8C8C8',
        unfocusedActiveForeground: '#EEFFFF',
        activeForeground: '#eeffff',
        inactiveForeground: '#ffffff4e',
    },
    editorGroupHeader: {
        tabsBackground: '#184967',
        tabsBorder: '#242938',
        noTabsBackground: '#242938',
    },
    titleBar: {
        activeBackground: '#184967',
        border: '#26323860',
        inactiveBackground: '#263238',
        inactiveForeground: '#607a86',
        activeForeground: '#eeefff',
    },
    walkThrough: {
        embeddedEditorBackground: '#232635',
    },
    peekViewEditor: {
        background: '#232635',
        matchHighlightBackground: '#2670a15a',
    },
    widget: {
        shadow: '#232635',
    },
    statusBarItem: {
        prominentHoverBackground: '#242938',
        prominentBackground: '#242938',
        activeBackground: '#242938',
        hoverBackground: '#242938',
    },
    sideBar: {
        border: '#242938',
        background: '#242938',
        foreground: '#617396',
    },
    activityBar: {
        border: '#242938',
        background: '#242938',
        dropBackground: '#2670a1e3',
        foreground: '#eeffff',
    },
    statusBar: {
        border: '#242938',
        debuggingBorder: '#242938',
        debuggingBackground: '#242938',
        noFolderBackground: '#242938',
        background: '#242938',
        noFolderBorder: '#25293A',
        foreground: '#5e718a',
        debuggingForeground: '#FFFFFF',
    },
    scrollbar: {
        shadow: '#242938',
    },
    editorHoverWidget: {
        background: '#242938',
        border: '#2670a1',
    },
    peekViewTitle: {
        background: '#242938',
    },
    settings: {
        checkboxBackground: '#242938',
        textInputBackground: '#242938',
        numberInputBackground: '#242938',
        dropdownBackground: '#242938',
        headerForeground: '#80CBC4',
        modifiedItemIndicator: '#80CBC4',
        checkboxForeground: '#EEFFFF',
        textInputForeground: '#EEFFFF',
        numberInputForeground: '#EEFFFF',
        dropdownForeground: '#EEFFFF',
    },
    breadcrumb: {
        background: '#242938',
        foreground: '#69809878',
        activeSelectionForeground: '#80CBC4',
        focusForeground: '#EEFFFF',
    },
    panel: {
        border: '#242938',
        background: '#242938',
        dropBackground: '#EEFFFF',
    },
    debugToolBar: {
        background: '#242938',
    },
    editorWidget: {
        background: '#242938',
        resizeBorder: '#80CBC4',
    },
    debugExceptionWidget: {
        background: '#242938',
        border: '#2670a1',
    },
    editorMarkerNavigation: {
        background: '#242938',
    },
    sideBarSectionHeader: {
        background: '#242938',
        border: '#26323860',
        foreground: '#eeffff',
    },
    dropdown: {
        background: '#242938',
        border: '#2670a1',
        foreground: '#eeffffcc',
    },
    editorOverviewRuler: {
        border: '#263238',
        commonContentForeground: '#2670a1',
        incomingContentForeground: '#2670a1',
        currentContentForeground: '#2670a1',
    },
    editorBracketMatch: {
        background: '#263238',
        border: '#FFCC0050',
    },
    panelTitle: {
        activeBorder: '#2670a1',
        inactiveForeground: '#bfc9d580',
        activeForeground: '#eeffff',
    },
    editorGroup: {
        dropBackground: '#2670a173',
        border: '#2c3b4f',
        background: '#32374C',
    },
    merge: {
        incomingHeaderBackground: '#2670a15a',
        currentHeaderBackground: '#2670a15a',
    },
    button: {
        hoverBackground: '#2670a1',
        background: '#2670a1cc',
        foreground: '#eeffffcc',
    },
    list: {
        activeSelectionBackground: '#2670a1',
        focusBackground: '#2670a1',
        dropBackground: '#2c3b4f',
        hoverBackground: '#2c3b4f',
        inactiveSelectionBackground: '#708aa10d',
        inactiveSelectionForeground: '#708aa1',
        activeSelectionForeground: '#eeffff',
        focusForeground: '#eeffff',
        highlightForeground: '#eeffff',
        hoverForeground: '#eeffff',
    },
    peekView: {
        border: '#2670a1',
    },
    badge: {
        background: '#2670a1',
        foreground: '#eeffff',
    },
    editorSuggestWidget: {
        selectedBackground: '#2670a1',
        background: '#2c3b4f',
        border: '#2c3b4f',
        foreground: '#bfc9d5',
        highlightForeground: '#eeffff',
    },
    extensionButton: {
        prominentBackground: '#2670a1cc',
        prominentHoverBackground: '#2670a1',
        prominentForeground: '#eeffffcc',
    },
    peekViewResult: {
        matchHighlightBackground: '#2670a15a',
        background: '#2c3b4f',
        selectionBackground: '#83b2e1b3',
        fileForeground: '#eeffff',
        lineForeground: '#eeffff',
        selectionForeground: '#eeffff',
    },
    activityBarBadge: {
        background: '#2670a1',
        foreground: '#eeffff',
    },
    editorWhitespace: {
        foreground: '#2a3f4f',
    },
    editorIndentGuide: {
        background: '#2a3f4f',
        activeBackground: '#37474F',
    },
    notifications: {
        background: '#2c3b4f',
        foreground: '#eeffffcc',
    },
    pickerGroup: {
        border: '#2c3b4f',
        foreground: '#d1aaff',
    },
    breadcrumbPicker: {
        background: '#2c3b4f',
    },
    scrollbarSlider: {
        hoverBackground: '#324962',
        activeBackground: '#324962',
        background: '#324962',
    },
    editorRuler: {
        foreground: '#37474F',
    },
    input: {
        border: '#414863',
        background: '#414863',
        foreground: '#eeffffcc',
        placeholderForeground: '#eeffffcc',
    },
    editorLineNumber: {
        foreground: '#4c5374',
        activeForeground: '#eeffff',
    },
    terminal: {
        ansiBlack: '#5e718a',
        ansiBrightBlack: '#5e718a',
        ansiBrightBlue: '#82AAFF',
        ansiBlue: '#82AAFF',
        ansiCyan: '#89DDFF',
        ansiBrightCyan: '#89DDFF',
        ansiGreen: '#a9c77d',
        ansiBrightGreen: '#C3E88D',
        ansiMagenta: '#C792EA',
        ansiBrightMagenta: '#C792EA',
        ansiBrightWhite: '#eeffff',
        ansiWhite: '#eeffff',
        ansiRed: '#ff5572',
        ansiBrightRed: '#ff5572',
        ansiBrightYellow: '#FFCB6B',
        ansiYellow: '#FFCB6B',
    },
    inputValidation: {
        infoBackground: '#64b5f6f2',
        infoBorder: '#64B5F6',
        errorBorder: '#EF5350',
        errorBackground: '#ef5350f2',
        warningBackground: '#ffca28f2',
        warningBorder: '#FFCA28',
    },
    peekViewTitleDescription: {
        foreground: '#708aa1',
    },
    textLink: {
        foreground: '#80CBC4',
        activeForeground: '#EEFFFF',
    },
    notificationLink: {
        foreground: '#80CBC4',
    },
    progressBar: {
        background: '#80CBC4',
    },
    selection: {
        background: '#83b2e186',
    },
    diffEditor: {
        insertedTextBackground: '#99b76d23',
        insertedTextBorder: '#a9c77d33',
        removedTextBackground: '#ef535033',
        removedTextBorder: '#ef53504d',
    },
    editorGutter: {
        addedBackground: '#9CCC65',
        modifiedBackground: '#e2b93d',
        deletedBackground: '#EF5350',
    },
    foreground: '#EF5350',
    sideBarTitle: {
        foreground: '#eeffff',
    },
    editorLink: {
        activeForeground: '#EEFFFF',
    },
    peekViewTitleLabel: {
        foreground: '#eeffff',
    },
    inputOption: {
        activeBorder: '#eeffffcc',
    },
    peekViewEditorGutter: {
        background: '#EEFFFF05',
    },
    editorMarkerNavigationError: {
        background: '#EF5350',
    },
    editorError: {
        foreground: '#EF5350',
    },
    editorCursor: {
        foreground: '#ff9900',
    },
    editorWarning: {
        foreground: '#FFCA28',
    },
    editorCodeLens: {
        foreground: '#FFCA28',
    },
    editorMarkerNavigationWarning: {
        background: '#FFCA28',
    },
    errorForeground: '#FFCA28',
    # contrastBorder: '#FFCA28',
    # focusBorder: '#FFCA28',
}



#
# Code Groups
#

invalid_group = [
    "invalid",
    "invalid.illegal",
    "invalid.deprecated",
]
comment_group = [
    "comment",
    "comment.line.double-slash",
    "punctuation.definition.comment",
]
normal_variables = [
    "variable",
    "variable.other",
    "variable.other.readwrite",
    "variable.assignment.coffee",
    "variable.other.constant",
    "variable.other.readwrite.ts",
    "variable.other.readwrite.js",
    "variable.other.readwrite.global",
    "support.variable.object.process.js",
    "variable.other.constant.js", # yes, it says constant, but its not a constant, its a non-const variable
    "variable.other.member", # used by the c++ extension for members that are not being accessed
]
semi_special_variables = [
    "source.ruby variable.other.readwrite.class", # class members in ruby
]
first_property = [
    "variable.other.object.js",
    "variable.other.object.access",
]
middle_property = [
    "support.variable.property",
    "variable.other.object.property",
]
last_property = [
    "variable.other.property",
]
constants = [
    "variable.other.constant",
    "constant.other.php",
]
globals = [
    "support.variable.other.object.node",
]
parameter_variables = [
    "variable.parameter",
    "variable.parameter.function",
    "variable.parameter.function.language.python",
    "variable.parameter.function.coffee",
]
dictionary_keys = [
    "variable.assignment.coffee", # I'm not sure why its called this, but it is a dictionary key
]
unusual_variables = [
    # yaml aliases
    "source.yaml punctuation.definition.alias",
    "source.yaml variable.other.alias",
    "source.dockerfile variable.other",
    "variable.other.predefined",
    "source.perl variable.other.predefined punctuation.definition.variable",
]
instance_variables = [
    "variable.other.readwrite.instance",
    "punctuation.definition.variable.ruby",
]
functions = [
    "entity.name.function",
    "variable.function",
    "support.function",
    "entity.name.command",
    "keyword.other.special-method",
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
tags = [
    "entity.name.tag",
    "punctuation.definition.tag",
    "punctuation.definition.tag source.js", # a fix for screwed up html <script> tags
]
tag_attributes = [
    "entity.other.attribute-name.tag.pug",
    "entity.other.attribute-name.js",
]
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
strings = [
    "string"
]
docstring = [
    "string.quoted.docstring",
    "source.python string.quoted.docstring punctuation.definition.string.begin",
    "source.python string.quoted.docstring punctuation.definition.string.end",
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
    "constant.other.key", # java keys inside of annotations
]
special_variables = [
    "variable.language",
    "variable.language.this",
    "variable.language.self",
    "variable.language.super",
]
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
    "source.go keyword.var",
    "source.perl storage.modifier",
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
]
operators = [
    "keyword.operator",
    "keyword.operator.assignment.coffee", # this is the : 
    "meta.tag.attributes keyword.operator.assignment", # jsx attribute assignment
    "meta.embedded.expression meta.tag.attributes keyword.operator.assignment", # jsx attribute assignment
    # function-like operators
    "punctuation.section.arguments.begin.bracket.round.operator",
    "punctuation.section.arguments.end.bracket.round.operator",
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
    "source.python punctuation.separator.colon",
    "source.python punctuation.section.function.begin",
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
    # the line-continuation
    "constant.character.escape.line-continuation",
    # the ""'s in json
    "source.json punctuation.support.type.property-name.begin",
    "source.json punctuation.support.type.property-name.end",
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
]
colors_group = [ # like css/html colors
    "constant.other.color",
]
default_text_color = [
    "source"
]
unimportant = [
]


# C++
    cpp = {
        assembly_function: [
            "storage.type.asm",
            "punctuation.section.parens.begin.bracket.round.assembly",
            "punctuation.section.parens.end.bracket.round.assembly",
        ],
        assembly_punctuation: [
            "meta.asm meta.encoding",
            "punctuation.definition.string.begin.assembly",
            "punctuation.definition.string.end.assembly",
        ]
    }
# shell
    shell = {
        seperator: [
            "source.shell punctuation.separator.statement",
            "source.shell keyword.operator.pipe",
        ]
    }
# regex
    regex = {
        group: [
            "punctuation.definition.group"
        ]
    }
# css
    css_properties = [
        "source.css support.type.property-name",
        "source.sass support.type.property-name",
        "source.scss support.type.property-name",
        "source.less support.type.property-name",
        "source.stylus support.type.property-name",
        "source.postcss support.type.property-name",
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
# Json keys
    json_key_level_0_group = [ "source.json meta.structure.dictionary.json support.type.property-name.json", ]
    json_key_level_1_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json", ]
    json_key_level_2_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
    json_key_level_3_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
    json_key_level_4_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
    json_key_level_5_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
    json_key_level_6_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
    json_key_level_7_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
    json_key_level_8_group = [ "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",]
# markdown
    markdown = {
        paragraph: "meta.paragraph.markdown",
    }
    inserted_group = [
        "markup.inserted",
    ]
    deleted_group = [
        "markup.deleted",
    ]
    changed_group = [
        "markup.changed",
    ]
    markdown___link = [
        "string.other.link",
    ]
    markdown___plain_group = [
        "text.html.markdown",
        "punctuation.definition.list_item.markdown",
    ]
    markdown___markup_raw_inline_group = [
        "text.html.markdown markup.inline.raw.markdown",
    ]
    markdown___markup_raw_inline_punctuation_group = [
        "text.html.markdown markup.inline.raw.markdown punctuation.definition.raw.markdown",
    ]
    markdown___line_break_group = [
        "text.html.markdown meta.dummy.line-break",
    ]
    markdown___heading_group = [
        "markdown.heading",
        "markup.heading",
        "markup.heading | markup.heading entity.name",
        "markup.heading.markdown punctuation.definition.heading.markdown",
    ]
    markup___italic_group = [
        "markup.italic",
    ]
    markup___bold_group = [
        "markup.bold",
        "markup.bold string",
    ]
    markup___bold_italic_group = [
        "markup.bold markup.italic",
        "markup.italic markup.bold",
        "markup.quote markup.bold",
        "markup.bold markup.italic string",
        "markup.italic markup.bold string",
        "markup.quote markup.bold string",
    ]
    markup___underline_group = [
        "markup.underline",
    ]
    markup___strike_group = [
        "markup.strike",
    ]
    markdown___blockquote_group = [
        "markup.quote punctuation.definition.blockquote.markdown",
    ]
    markup___quote_group = [
        "markup.quote",
    ]
    markdown___link_group = [
        "string.other.link.title.markdown",
    ]
    markdown___link_description_group = [
        "string.other.link.description.title.markdown",
    ]
    markdown___link_anchor_group = [
        "constant.other.reference.link.markdown",
    ]
    markup___raw_block_group = [
        "markup.raw.block",
    ]
    markdown___fenced_bode_block_variable_group = [
        "markup.fenced_code.block.markdown",
        "markup.inline.raw.string.markdown",
    ]
    markdown___fenced_language_group = [
        "variable.language.fenced.markdown",
    ]
    markdown___separator_group = [
        "meta.separator",
    ]
    markup___table_group = [
        "markup.table",
    ]



#
# need to fix
#
blue_group = [
    "source.python meta.function-call.generic.python",
    "support.function",
    "entity.other.attribute-name.js",
    "keyword.other.special-method",
    "support.function.kernel.ruby",
    "variable.other.constant.object.js",
    "string.regexp.group punctuation.definition.group",
    "punctuation.definition.character-class",
    "entity.other.attribute-name.class.css",
    "entity.other.attribute-name.class.pug",
]
blue_underline_group = [
    "meta.object-literal.key.js entity.name.function",
    "entity.name.function.member",
    "support.variable.property.js",
    "support.variable.property.dom.js",
    "meta.method.declaration.js support.function.dom.js",
    "meta.method.declaration.js entity.name.function.js",
    "support.variable.property.dom.js",
    "support.function.dom.js",
]
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
    "punctuation.definition.dict.begin.python",
    "punctuation.definition.dict.end.python",
    "punctuation.definition.list.begin.python",
    "punctuation.definition.list.end.python",
    "punctuation.definition.begin.bracket.square",
    "punctuation.definition.end.bracket.square",
    "meta.item-access.python punctuation.definition.arguments.begin.python",
    "meta.item-access.python punctuation.definition.arguments.end.python",
    "string.regexp",
    "meta.objectliteral.js",
    "meta.object.member.js",
    "meta.brace.square",
]
dim_green_with_underline_group = [
    "punctuation.separator.dot-access.c",
    "variable.other.property.ts",
    "punctuation.accessor.ts",
    "punctuation.accessor.js",
    "source.ruby constant.language.symbol punctuation.definition.constant.hashkey",
    "source.ruby constant.language.symbol.hashkey.ruby",
    "source.ruby constant.language.symbol.hashkey",
    "source.cpp variable.other.object",
    "source.cpp punctuation.separator.dot-access",
    "source.cpp punctuation.separator.pointer-access",
    "source.cpp support.type.posix-reserved",
    "support.type.property-name.json",
    "support.type.property-name.css",
    "entity.name.tag.yaml",
    "meta.array.literal string.quoted",
    "meta.array.literial variable.other.readwrite.js",
    "meta.object-literal.key string.quoted",
    "punctuation.definition.group.js",
    "variable.other.object",
    "variable.other.property.js",
    "variable.other.object.property.js",
    "meta.object-literal.key.js",
    "meta.method.declaration.js meta.brace.square.js",
    "meta.object-literal.key.js variable.other.readwrite.js - meta.var.expr",
    "variable.other.constant.property.js",
    "support.variable.property.process.js",
    "variable.other.readwrite.global.perl",
]
dim_green_with_italics_group = [
]
green_group = [
    "meta.encoding",
    "constant.other.option",
    "punctuation.definition.string.begin",
    "punctuation.definition.string.end",
    "keyword.other.special-method.ruby",
    "entity.name",
    "source.python support.function.magic.python",
    "source.python support.variable.magic.python",
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
    "punctuation.support.type.property-name.begin",
    "punctuation.support.type.property-name.end",
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
]
lime_green_with_underline_group = [
    "source.python string.quoted.single",
    "source.python string",
    "source.shell string.quoted.single",
    "source.shell string.unquoted.argument",
    "source.shell string.quoted.double",
]
orange_group = [
    "constant.other",
    "constant.other.decimal",
    "punctuation.separator.variable.ruby",
    "source.ruby constant.language.symbol punctuation.definition.constant",
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
orange_bold_group = [
    "source.python constant.language",
]
yellow_cursive_group = [
    "text.haml entity.other.attribute-name.id",
    "support.variable.dom",
    "entity.name.tag.css",
    "support.function.magic.python",
    "support.type.python",
    "support.class.builtin.js",
    "entity.other.attribute-name.html",
    "support.constant.math",
    "storage.modifier.glsl",
]
yellow_not_cursive_group = [
    "source.python constant.other.caps",
    "source.python entity.name.function.decorator",
    "source.python punctuation.definition.decorator",
    "source.python meta.function.decorator punctuation.definition.arguments.begin",
    "source.python meta.function.decorator punctuation.definition.arguments.end",
    "source.c support.type.posix-reserved",
    "source.shell variable.other",
    "support.type.built-in.posix-reserved",
    "variable.other.constant.ruby",
    "source.go entity.name.package",
    "source.go keyword.operator.assignment",
    "storage.type.primitive",
    "storage.type.built-in.primitive",
    "source.go storage.type",
    "storage.type.primitive",
    "variable.other.readwrite.global.special.perl",
    "entity.name.type",
    "meta.angle-brackets.cpp",
    "entity.name.type.template.cpp",
    "meta.function.definition.parameters",
    "source.cpp meta.function.definition.parameters.operator-overload",
    "source.cpp support.type.posix-reserved",
    "source.cpp storage.modifier",
    "source.cpp storage.type.return-type",
    "source.cpp storage.type.primitive",
    "source.cpp storage.type.c",
    "source.cpp storage.type.user-defined",
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
    "variable.other.constant",
]
yellow_underline_group = [
    "source.shell variable.other.normal.shell",
    "variable.other.normal.shell punctuation.definition.variable.shell",
    "entity.name.function.constructor.cpp",
    "variable.other.positional.shell",
    "variable.other.positional.shell punctuation.definition.variable.shell",
    "variable.other.special.shell punctuation.definition.variable.shell",
    "variable.other.special.shell",
]
bananna_yellow_group = [
    "keyword.other.unit",
    "punctuation.separator.constant.numeric",
]
bananna_yellow_underline_group = [
    "variable.other.readwrite.global.ruby",
    "variable.other.readwrite.global.ruby punctuation.definition.variable.ruby",
    "support.variable",
]
red_group = [
    "source.ruby meta.function.method.with-arguments punctuation.definition.constant.hashkey",
    "keyword.operator.assignment",
    "variable.language.this",
    "variable.language.self",
    "variable.language.special.self.python",
    "variable.parameter.function.language.special.self.python",
    "variable.other.alias.yaml",
]
red_underline_group = [
    "source.shell punctuation.definition.variable",
    "source.shell variable.language.special.wildcard",
    "source.shell variable.language.special.shell punctuation.definition.variable.shell",
    "source.shell variable.language.special.shell",
]
soft_red_group = [
    "source.cpp constant.language",
]

#
# Mapping
#

mapping = {
    white => {
        normal: [
            *colors_group,
        ],
    },
    gray => {
        normal: [
            *markdown___markup_raw_inline_punctuation_group,
            *markdown___blockquote_group,
            *markdown___fenced_language_group,
            *markdown[:paragraph],
            *boring_punctuation,
            *unimportant,
        ],
        italic: [
            *comment_group,
        ],
        bold: [
            *markdown___separator_group,
        ],
        underline: [
        ],
    },
    light_gray => {
        normal: [
            *markdown___plain_group,
            *markup___table_group,
            *markdown___fenced_bode_block_variable_group,
            *normal_variables,
            *css_properties,
            *default_text_color,
        ],
        underline: [
            *first_property
        ],
    },
    yellow => {
        normal: [
            *types,
            *css_classes_group,
            *json_key_level_1_group,
            *markdown___link_anchor_group,
            *yellow_not_cursive_group,
            *package_names,
        ],
        italic: [
            *yellow_cursive_group,
        ],
        underline: [
            *yellow_underline_group,
            *unusual_variables,
        ],
    },
    violet => {
        normal: [
            *changed_group,
            *json_key_level_0_group,
            *json_key_level_7_group,
            *markdown___markup_raw_inline_group,
            *markdown___link_description_group,
            *markup___raw_block_group,
        ],
        italic: [
            *attributes,
        ],
    },
    no_color => {
        italic: [
            *keywords,
            *markup___quote_group,
        ],
        underline: [
            *url_group,
            "meta.scope-resolution",
        ],
        normal: [
            *markdown___line_break_group,
        ],
        strike: [
            *markup___strike_group,
        ],
        bold: [
        ],
    },
    light_blue => {
        normal: [
            *keywords,
            *import_export_keywords,
            *normal_punctuation,
            *regular_expressions_group,
            *css_property_value,
        ],
        italic: [
            *control_flow,
        ],
    },
    blue => {
        normal: [
            *functions,
            *function_punctuation,
            *css_ids_group,
            *json_key_level_5_group,
            *markdown___link_group,
            *blue_group,
            *regex[:group],
            *cpp[:assembly_punctuation],
        ],
        italic: [
        ],
        underline: [
            *blue_underline_group,
            *last_property,
        ],
        bold: [
            *blue_bold_group,
        ],
    },
    orange   => {
        normal: [
            *json_key_level_2_group,
            *orange_group,
            *language_literals,
            *parameter_variables,
        ],
        italic: [
            *value_literals,
        ],
        underline: [
            *markup___underline_group,
            *orange_underline_group,
            *escape_characters_group,
        ],
        bold: [
            *orange_bold_group,
        ],
    },
    lime => {
        normal: [
            *inserted_group,
            *json_key_level_8_group,
            *markdown___heading_group,
            *lime_green_group,
        ],
        underline: [
            *lime_green_with_underline_group,
        ],
    },
    rust => {
        normal: [
            *json_key_level_4_group,
        ],
    },
    dark_slate => {
        bold: [
        ],
    },
    light_slate => {
        normal: [
        ],
    },
    pink => {
        normal: [
            *storage_types,
            *storage_type_punctuation,
            *storage_modifiers,
            *anonymous_function_punctuation,
        ],
        underline: [
        ],
        bold: [
            *cpp[:assembly_function],
        ],
    },
    light_purple => {
        normal: [
            *namespace,
            *attributes,
            *operators,
            *secondary_punctuation,
        ],
        italic: [
            *tag_attributes,
        ],
        underline: [
        ],
        bold: [
            *special_punctuation,
            *shell[:seperator],
        ],
    },
    dim_green => {
        normal: [
            *dim_green_group,
        ],
        underline: [
            *dim_green_with_underline_group,
            *dictionary_keys,
            *middle_property,
        ],
        italic: [
            *dim_green_with_italics_group,
        ],
    },
    teal => {
        normal: [
            *green_group,
            *unknown_entites,
        ],
    },
    teal_1 => {
        bold: [
            *green_bold_group,
        ],
    },
    bananna_yellow => {
        normal: [
            *bananna_yellow_group,
        ],
        underline: [
            *bananna_yellow_underline_group,
        ],
    },
    red => {
        normal: [
            *invalid_group,
            *deleted_group,
            *json_key_level_3_group,
            *red_group,
            *assignment_operators,
        ],
        italic: [
            *special_variables,
        ],
        underline: [
            *red_underline_group,
        ],
    },
    soft_red => {
        normal: [
            *tags,
            *constants,
            *markdown___link,
            *json_key_level_6_group,
            *soft_red_group,
            *number_literals,
            *instance_variables,
        ],
        italic: [
            *markup___italic_group,
        ],
        bold: [
            *markup___bold_group,
            *markup___bold_italic_group,
            *soft_red_group,
        ],
    },
}

IO.write("theme.json", convert_to_json_theme(theme_info, ui, mapping) )