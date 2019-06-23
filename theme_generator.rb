require_relative './theme_maker'

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
    "punctuation.definition.comment",
    "string.quoted.docstring",
]
variables_group = [
    "variable",
    "string constant.other.placeholder",
]
function_special_method_group = [
    "entity.name.function",
    "variable.function",
    "support.function",
    "keyword.other.special-method",
]
number_literals = [
    "constant.numeric",
]
control_flow = [
    "keyword.control",
    "keyword.control.conditional",
    "keyword.control.loop",
]

php_constants_group = [
    "constant.other.php",
]
colors_group = [
    "constant.other.color",
]

keyword_storage_group = [
    "keyword",
    "storage",
]
operator_misc_group = [
    "constant.other.color",
    "punctuation",
    "punctuation.definition.tag",
    "punctuation.separator.inheritance.php",
    "punctuation.definition.tag.html",
    "punctuation.definition.tag.begin.html",
    "punctuation.definition.tag.end.html",
    "punctuation.section.embedded",
    "keyword.other.template",
    "keyword.other.substitution",
]
tag_group = [
    "entity.name.tag",
    "markup.deleted.git_gutter",
]

c_related_block_level_variables_group = [
    "source.cpp meta.block variable.other",
]
variables_constant_group = [
    "variable.other.constant",
]
other_variable_string_link_group = [
    "support.other.variable",
    "string.other.link",
]
string_symbols_inherited_class_markup_heading_group = [
    "string",
    "constant.other.symbol",
    "constant.other.key",
    "entity.other.inherited-class",
    "markup.heading",
    "markup.inserted.git_gutter",
    "meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js",
]
class_support_group = [
    "entity.name",
    "support.type",
    "support.class",
    "support.orther.namespace.use.php",
    "support.other.namespace.php",
    "markup.changed.git_gutter",
    "support.type.sys-types",
]
entity_types_group = [
    "support.type",
]
css_class_and_support_group = [
    "source.css support.type.property-name",
    "source.sass support.type.property-name",
    "source.scss support.type.property-name",
    "source.less support.type.property-name",
    "source.stylus support.type.property-name",
    "source.postcss support.type.property-name",
]
sub_methods_group = [
    "entity.name.module.js",
    "variable.import.parameter.js",
    "variable.other.class.js",
]
language_methods_group = [
    "variable.language",
]
entitynamemethodjs_group = [
    "entity.name.method.js",
]
metamethodjs_group = [
    "meta.class-method.js entity.name.function.js",
    "variable.function.constructor",
]
attributes_group = [
    "entity.other.attribute-name",
]
css_classes_group = [
    "entity.other.attribute-name.class",
]
css_ids_group = [
    "source.sass keyword.control",
]
inserted_group = [
    "markup.inserted",
]
deleted_group = [
    "markup.deleted",
]
changed_group = [
    "markup.changed",
]
regular_expressions_group = [
    "string.regexp",
]
escape_characters_group = [
    "constant.character.escape",
]
url_group = [
    "*url*",
    "*link*",
    "*uri*",
]
decorators_group = [
    "tag.decorator.js entity.name.tag.js",
    "tag.decorator.js punctuation.definition.tag.js",
]
es7_bind_operator_group = [
    "source.js constant.other.object.key.js string.unquoted.label.js",
]
json_key___level_0_group = [
    "source.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_1_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_2_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_3_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_4_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_5_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_6_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_7_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
]
json_key___level_8_group = [
    "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json",
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
gray_group = [
    "comment",
    "support.constant.subsections",
    "source.python string.quoted.docstring punctuation.definition.string.begin",
    "source.python string.quoted.docstring punctuation.definition.string.end",
    "comment.line.double-slash",
    "punctuation.terminator",
    "punctuation.definition.template-expression.begin",
    "punctuation.definition.template-expression.end",
    "punctuation.section.embedded.end",
    "punctuation.section.embedded.begin",
    "source.json punctuation.support.type.property-name.begin",
    "source.json punctuation.support.type.property-name.end",
    "entity.name.namespace.scope-resolution",
    "entity.name.type.namespace.scope-resolution",
    "meta.scope-resolution",
    "meta.scope-resolution punctuation.separator.comma.template.argument",
    "meta.scope-resolution entity",
    "meta.scope-resolution punctuation.separator.namespace.access",
    "meta.scope-resolution storage.type.user-defined",
    "meta.scope-resolution storage.type.primitive",
    "meta.scope-resolution keyword.operator.comparison",
    "meta.scope-resolution storage.type",
    "meta.scope-resolution constant.numeric",
    "punctuation.definition.lambda.return-type",
    "meta.lambda.capture",
    "meta.lambda.capture punctuation.separator.delimiter",
    "meta.lambda.capture variable.parameter.defaulted",
    "meta.lambda.capture variable.other.object",
    "meta.lambda.capture constant.numeric",
    "meta.lambda.capture keyword",
    "meta.lambda.capture keyword.operator",
    "meta.lambda.capture keyword.operator.assignment",
    "meta.lambda.capture punctuation.definition.begin.bracket.square",
    "meta.lambda.capture punctuation.definition.end.bracket.square",
    "punctuation.definition.capture.begin.lambda",
    "punctuation.definition.capture.end.lambda",
    "meta.paragraph.markdown",
]
gray_underline_group = [
    "source.shell string.interpolated.dollar",
]
pure_white_group = [
]
off_white_group = [
    "punctuation.section.parens-c",
    "variable",
    "source.python",
    "variable.assignment.coffee",
    "source.coffee",
    "meta.brace.round.js",
    "support.variable.object.process.js",
    "meta.function-call",
    "meta.function-call.arguments.python",
    "variable.other.readwrite.js",
    "meta.var-single-variable.expr.js",
    "variable.other.constant",
    "variable.other.readwrite.ts",
]
off_white_with_underline_group = [
    "variable.other.object.js",
    "variable.other.readwrite.global",
]
slate_bold_group = [
]
slate_group = [
]
light_blue_group = [
    "keyword",
    "source.shell punctuation.definition.evaluation",
    "colon punctuation.separator",
    "meta.brace.round.ts",
    "colon punctuation.separator",
    "meta.brace.round.js",
    "keyword.other",
    "punctuation.range-based.cpp",
    "source.cpp punctuation.section.parens.begin.bracket.round",
    "source.cpp punctuation.section.parens.end.bracket.round",
    "keyword.control.directive",
    "punctuation.separator.colon.python",
    "punctuation.section.function.begin.python",
    "source.cpp punctuation.section.block.begin.bracket.curly",
    "source.cpp punctuation.section.block.end.bracket.curly",
    "meta.block.js",
    "punctuation.definition.block.js",
    "punctuation.section.scope.begin",
    "punctuation.section.scope.end",
    "support.constant.property-value.css",
    "keyword.control.flow.alias.yaml",
    "storage.modifier.chomping-indicator.yaml",
    "support.type.object.module",
]
pink_group = [
    "source.shell punctuation.definition.group.shell",
    "keyword.other.typedef",
    "punctuation.section.arguments.begin.bracket.round.decltype.cpp",
    "punctuation.section.arguments.end.bracket.round.decltype.cpp",
    "source.go keyword.function",
    "source.go keyword.var",
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
    "storage.modifier.lambda",
    "storage.modifier.async",
    "storage.type",
    "storage.type.modifier.access.control",
    "punctuation.section.angle-brackets.start.template.definition.cpp",
    "punctuation.section.angle-brackets.end.template.definition.cpp",
    "source.cpp storage.type.union",
    "source.cpp storage.type.enum",
    "storage.type",
    "template.definition meta.template.operator.comma.cpp",
    "storage.type.template.cpp",
    "storage.type.modifier.access.cpp",
    "storage.type.object.cpp",
    "punctuation.section.block.begin.bracket.curly.lambda.cpp",
    "punctuation.section.block.end.bracket.curly.lambda.cpp",
]
pink_underline_group = [
]
pink_bold_group = [
    "storage.type.asm",
    "punctuation.section.parens.begin.bracket.round.assembly",
    "punctuation.section.parens.end.bracket.round.assembly",
]
purple_group = [
    "punctuation.accessor.attribute",
    "entity.name.namespace",
    "punctuation.section.arguments.begin.bracket.round.operator",
    "punctuation.section.arguments.end.bracket.round.operator",
    "punctuation.section.attribute",
    "entity.other.attribute",
    "entity.other",
    "punctuation.definition.scope.cpp",
    "keyword.operator",
    "keyword.operator.new.js",
    "keyword.operator.expression",
    "keyword.operator.logical.python",
    "storage.modifier",
    "storage.type.property",
    "storage.type.function.arrow",
    "storage.type.function.arrow.js",
    "storage.type.function.arrow.js.jsx",
    "variable.language.arguments.js",
    "punctuation.separator",
    "punctuation.section.embedded.begin.js",
    "punctuation.section.embedded.end.js",
    "entity.other.attribute-name.tag.pug",
    "meta.tag.attributes.js keyword.operator.assignment",
]
purple_cursive_group = [
    "entity.other.attribute-name",
    "entity.other.attribute-name.js.jsx",
]
purple_underline_group = [
]
purple_bold_group = [
    "source.shell punctuation.separator.statement",
    "source.shell keyword.operator.pipe",
    "punctuation.vararg-ellipses",
]
blue_group = [
    "meta.embedded.assembly entity.name.function",
    "entity.name.command",
    "punctuation.definition.arguments.shell",
    "meta.asm meta.encoding",
    "punctuation.definition.string.begin.assembly",
    "punctuation.definition.string.end.assembly",
    "punctuation.section.parameters.begin.bracket.round",
    "punctuation.section.parameters.end.bracket.round",
    "punctuation.section.arguments.begin.bracket.round",
    "punctuation.section.arguments.end.bracket.round",
    "punctuation.section.block.begin.bracket.curly.function.definition",
    "punctuation.section.block.end.bracket.curly.function.definition",
    "punctuation.section.arguments.begin.bracket.round.function.member",
    "punctuation.section.arguments.end.bracket.round.function.member",
    "source.cpp entity.name.function",
    "source.go punctuation.other.period",
    "source.go punctuation.definition.begin.bracket.round",
    "source.go punctuation.definition.end.bracket.round",
    "punctuation.section.block.begin.bracket.curly.lambda",
    "punctuation.section.block.end.bracket.curly.lambda",
    "punctuation.definition.parameters.ruby",
    "punctuation.section.function",
    "punctuation.definition.arguments.begin",
    "punctuation.definition.arguments.end",
    "punctuation.definition.parameters.begin",
    "punctuation.definition.parameters.end",
    "source.cpp meta.function-call punctuation.section.arguments.begin.bracket.round",
    "source.cpp meta.function-call punctuation.section.arguments.end.bracket.round",
    "source.cpp entity.name.function",
    "source.cpp meta.initialization variable.other",
    "source.cpp punctuation.separator.delimiter",
    "source.cpp punctuation.section.parens.begin.bracket.round.initialization",
    "source.cpp punctuation.section.parens.end.bracket.round.initialization",
    "source.cpp punctuation.section.parameters.begin.bracket.round",
    "source.cpp punctuation.section.parameters.end.bracket.round",
    "source.cpp meta.function-call.member punctuation.section.arguments.begin.bracket.round.function.member",
    "source.cpp meta.function-call.member punctuation.section.arguments.end.bracket.round.function.member",
    "source.cpp meta.function punctuation.section.arguments.begin.bracket.round",
    "source.cpp meta.function punctuation.section.arguments.end.bracket.round",
    "source.cpp meta.function punctuation.section.parameters.begin.bracket.round",
    "source.cpp meta.function punctuation.section.parameters.end.bracket.round",
    "source.cpp meta.function punctuation.separator.delimiter",
    "source.cpp punctuation.definition.parameters.begin",
    "source.cpp punctuation.definition.parameters.end",
    "entity.name.function",
    "support.function.dom.js",
    "support.variable.property.js",
    "punctuation.definition.group.shell",
    "source.python meta.function-call.generic.python",
    "support.function",
    "entity.other.attribute-name.js",
    "keyword.other.special-method",
    "support.function.kernel.ruby",
    "variable.other.constant.js",
    "variable.other.constant.object.js",
    "string.regexp.group punctuation.definition.group",
    "punctuation.definition.character-class",
    "entity.other.attribute-name.class.css",
    "entity.other.attribute-name.class.pug",
]
blue_underline_group = [
    "variable.other.property.cpp",
    "meta.object-literal.key.js entity.name.function",
    "variable.other.member",
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
blue_italics_group = [
    "support.function.builtin",
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
    "meta.brace.square.js",
    "meta.array.literal string.quoted",
    "meta.array.literial variable.other.readwrite.js",
    "meta.object-literal.key string.quoted",
    "punctuation.definition.group.js",
    "variable.other.object",
    "variable.other.property.js",
    "variable.other.object.property.js",
    "meta.brace.square.js - meta.var.expr",
    "meta.object-literal.key.js",
    "meta.method.declaration.js meta.brace.square.js",
    "meta.object-literal.key.js variable.other.readwrite.js - meta.var.expr",
    "meta.array.literal.js variable.other.readwrite.js",
    "variable.other.constant.property.js",
    "support.variable.property.process.js",
    "variable.other.readwrite.global.perl",
]
dim_green_with_italics_group = [
    "variable.other.constant.js",
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
    "variable.parameter",
    "variable.parameter.function",
    "variable.parameter.function.language.python",
    "keyword.other.unit",
    "variable.other.normal.shell",
    "variable.parameter.function.coffee",
    "constant.language",
    "constant.language.boolean",
    "constant.language.null",
    "constant.language.nil",
    "constant.language.undefined",
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
    "constant.character.escape",
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
    "variable.other.readwrite",
    "source.cpp variable.other",
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
bubble_group = [
]

#
# Mapping
#

mapping = {
    white => {
        normal: [
            *colors_group,
            *pure_white_group,
        ],
    },
    gray => {
        normal: [
            *markdown___markup_raw_inline_punctuation_group,
            *markdown___blockquote_group,
            *markdown___fenced_language_group,
            *gray_group,
        ],
        italic: [
            *comment_group,
        ],
        bold: [
            *markdown___separator_group,
        ],
        underline: [
            *gray_underline_group,
        ],
    },
    light_gray => {
        normal: [
            *variables_group,
            *markdown___plain_group,
            *markup___table_group,
            *markdown___fenced_bode_block_variable_group,
            *entity_types_group,
            *css_class_and_support_group,
            *off_white_group,
        ],
        underline: [
            *off_white_with_underline_group,
        ],
    },
    yellow => {
        normal: [
            *php_constants_group,
            *class_support_group,
            *css_classes_group,
            *json_key___level_1_group,
            *markdown___link_anchor_group,
            *yellow_not_cursive_group,
        ],
        italic: [
            *yellow_cursive_group,
        ],
        underline: [
            *yellow_underline_group,
        ],
    },
    violet => {
        normal: [
            *keyword_storage_group,
            *changed_group,
            *json_key___level_0_group,
            *json_key___level_7_group,
            *markdown___markup_raw_inline_group,
            *markdown___link_description_group,
            *markup___raw_block_group,
        ],
        italic: [
            *attributes_group,
        ],
    },
    no_color => {
        italic: [
            *keyword_storage_group,
            *markup___quote_group,
        ],
        underline: [
            *url_group,
        ],
        normal: [
            *markdown___line_break_group,
        ],
        strike: [
            *markup___strike_group,
        ],
        bold: [
            *bubble_group,
        ],
    },
    light_blue => {
        normal: [
            *operator_misc_group,
            *regular_expressions_group,
            *escape_characters_group,
            *light_blue_group,
        ],
        italic: [
            *control_flow,
        ],
    },
    blue => {
        normal: [
            *function_special_method_group,
            *metamethodjs_group,
            *css_ids_group,
            *json_key___level_5_group,
            *markdown___link_group,
            *blue_group,
        ],
        italic: [
            *entitynamemethodjs_group,
            *decorators_group,
            *blue_italics_group,
        ],
        underline: [
            *blue_underline_group,
        ],
        bold: [
            *blue_bold_group,
        ],
    },
    orange   => {
        normal: [
            *json_key___level_2_group,
            *orange_group,
        ],
        underline: [
            *markup___underline_group,
            *orange_underline_group,
        ],
        bold: [
            *orange_bold_group,
        ],
    },
    lime => {
        normal: [
            *inserted_group,
            *json_key___level_8_group,
            *markdown___heading_group,
            *lime_green_group,
        ],
        underline: [
            *lime_green_with_underline_group,
        ],
    },
    rust => {
        normal: [
            *json_key___level_4_group,
        ],
    },
    dark_slate => {
        bold: [
            *slate_bold_group,
        ],
    },
    light_slate => {
        normal: [
            *slate_group,
        ],
    },
    pink => {
        normal: [
            *pink_group,
        ],
        underline: [
            *pink_underline_group,
        ],
        bold: [
            *pink_bold_group,
        ],
    },
    light_purple => {
        normal: [
            *purple_group,
        ],
        italic: [
            *purple_cursive_group,
        ],
        underline: [
            *purple_underline_group,
        ],
        bold: [
            *purple_bold_group,
        ],
    },
    dim_green => {
        normal: [
            *dim_green_group,
        ],
        underline: [
            *dim_green_with_underline_group,
        ],
        italic: [
            *dim_green_with_italics_group,
        ],
    },
    teal => {
        normal: [
            *green_group,
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
            *sub_methods_group,
            *deleted_group,
            *json_key___level_3_group,
            *red_group,
        ],
        italic: [
            *language_methods_group,
            *es7_bind_operator_group,
        ],
        underline: [
            *red_underline_group,
        ],
    },
    soft_red => {
        normal: [
            *tag_group,
            *c_related_block_level_variables_group,
            *variables_constant_group,
            *other_variable_string_link_group,
            *json_key___level_6_group,
            *soft_red_group,
            *number_literals,
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