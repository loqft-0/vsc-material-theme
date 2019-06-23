require 'json'
require 'yaml'
require 'set'

require_relative './theme_maker'

#
# Code Colors
#
background_color = "#242938"
whitespace_color = "#2a3f4f"
pure_white       = "#FFFFFF"
off_white        = "#c7cbcd"
gray             = "#698098"
soft_red         = "#E06C75"
red              = "#ff5572"
orange           = "#F78C6C"
golden_yellow    = "#fec355"
bananna_yellow   = "#ddd790"
lime_green       = "#C3E88D"
green            = "#4EC9B0"
dim_green        = "#80CBC4"
blue             = "#82AAFF"
purple           = "#c792eaff"
pink             = "#e57eb3"

#
# Editor colors
#
popup_color       = "#2c3b4f"
tab_color         = "#184967"
found_match_color = "#11729f"
cursor_color      = "#ff9900"


# theme = {
#   "name" => "XD",
#   "type" => "dark",
#   "tokenColors"  => [
#     {
#       "settings" => {
#         "background" => "#263238",
#         "foreground" => pure_white
#       }
#     },
#     {
#       "name" => "Comment",
#       "scope"  => [
#         "comment",
#         "punctuation.definition.comment",
#         "string.quoted.docstring"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => "#546E7A"
#       }
#     },
#     {
#       "name" => "Variables",
#       "scope"  => [
#         "variable",
#         "string constant.other.placeholder"
#       ],
#       "settings" => {
#         "foreground" => "#EEFFFF"
#       }
#     },
#     {
#       "name" => "PHP Constants",
#       "scope"  => [
#         "constant.other.php"
#       ],
#       "settings" => {
#         "foreground" => "#FFCB6B"
#       }
#     },
#     {
#       "name" => "Colors",
#       "scope"  => [
#         "constant.other.color"
#       ],
#       "settings" => {
#         "foreground" => pure_white
#       }
#     },
#     {
#       "name" => "Invalid",
#       "scope"  => [
#         "invalid",
#         "invalid.illegal"
#       ],
#       "settings" => {
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "Invalid deprecated",
#       "scope"  => [
#         "invalid.deprecated"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "Keyword, Storage",
#       "scope"  => [
#         "storage.modifier"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "Keyword, Storage",
#       "scope"  => [
#         "Keyword",
#         "Storage"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic"
#       }
#     },
#     {
#       "name" => "Operator, Misc",
#       "scope"  => [
#         "keyword.control",
#         "constant.other.color",
#         "punctuation",
#         "punctuation.definition.tag",
#         "punctuation.separator.inheritance.php",
#         "punctuation.definition.tag.html",
#         "punctuation.definition.tag.begin.html",
#         "punctuation.definition.tag.end.html",
#         "punctuation.section.embedded",
#         "keyword.other.template",
#         "keyword.other.substitution"
#       ],
#       "settings" => {
#         "foreground" => "#89DDFF"
#       }
#     },
#     {
#       "name" => "Keyword Control",
#       "scope"  => [
#         "keyword.control"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic"
#       }
#     },
#     {
#       "name" => "Tag",
#       "scope"  => [
#         "entity.name.tag",
#         "markup.deleted.git_gutter"
#       ],
#       "settings" => {
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Function, Special Method",
#       "scope"  => [
#         "entity.name.function",
#         "variable.function",
#         "support.function",
#         "keyword.other.special-method"
#       ],
#       "settings" => {
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "C-related Block Level Variables",
#       "scope"  => [
#         "source.cpp meta.block variable.other"
#       ],
#       "settings" => {
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Variables constant",
#       "scope"  => [
#         "variable.other.constant"
#       ],
#       "settings" => {
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Other Variable, String Link",
#       "scope"  => [
#         "support.other.variable",
#         "string.other.link"
#       ],
#       "settings" => {
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Number, Constant, Function Argument, Tag Attribute, Embedded",
#       "scope"  => [
#         "constant.numeric",
#         "constant.language",
#         "support.constant",
#         "constant.character",
#         "constant.escape",
#         "keyword.other.unit",
#         "keyword.other"
#       ],
#       "settings" => {
#         "foreground" => orange
#       }
#     },
#     {
#       "name" => "Number, Constant, Function Argument, Tag Attribute, Embedded",
#       "scope"  => [
#         "variable.parameter.function.language.special",
#         "variable.parameter"
#       ],
#       "settings" => {
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "String, Symbols, Inherited Class, Markup Heading",
#       "scope"  => [
#         "string",
#         "constant.other.symbol",
#         "constant.other.key",
#         "entity.other.inherited-class",
#         "markup.heading",
#         "markup.inserted.git_gutter",
#         "meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js"
#       ],
#       "settings" => {
#         "fontStyle"  => "normal",
#         "foreground" => lime_green
#       }
#     },
#     {
#       "name" => "Class, Support",
#       "scope"  => [
#         "entity.name",
#         "support.type",
#         "support.class",
#         "support.orther.namespace.use.php",
#         "support.other.namespace.php",
#         "markup.changed.git_gutter",
#         "support.type.sys-types"
#       ],
#       "settings" => {
#         "foreground" => "#FFCB6B"
#       }
#     },
#     {
#       "name" => "Entity Types",
#       "scope"  => [
#         "support.type"
#       ],
#       "settings" => {
#         "foreground" => "#B2CCD6"
#       }
#     },
#     {
#       "name" => "CSS Class and Support",
#       "scope"  => [
#         "source.css support.type.property-name",
#         "source.sass support.type.property-name",
#         "source.scss support.type.property-name",
#         "source.less support.type.property-name",
#         "source.stylus support.type.property-name",
#         "source.postcss support.type.property-name"
#       ],
#       "settings" => {
#         "foreground" => "#B2CCD6"
#       }
#     },
#     {
#       "name" => "Sub-methods",
#       "scope"  => [
#         "entity.name.module.js",
#         "variable.import.parameter.js",
#         "variable.other.class.js"
#       ],
#       "settings" => {
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "Language methods",
#       "scope"  => [
#         "variable.language"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "entity.name.method.js",
#       "scope"  => [
#         "entity.name.method.js"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "meta.method.js",
#       "scope"  => [
#         "meta.class-method.js entity.name.function.js",
#         "variable.function.constructor"
#       ],
#       "settings" => {
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "Attributes",
#       "scope"  => [
#         "entity.other.attribute-name"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "CSS Classes",
#       "scope"  => [
#         "entity.other.attribute-name.class"
#       ],
#       "settings" => {
#         "foreground" => "#FFCB6B"
#       }
#     },
#     {
#       "name" => "CSS ID's",
#       "scope"  => [
#         "source.sass keyword.control"
#       ],
#       "settings" => {
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "Inserted",
#       "scope"  => [
#         "markup.inserted"
#       ],
#       "settings" => {
#         "foreground" => lime_green
#       }
#     },
#     {
#       "name" => "Deleted",
#       "scope"  => [
#         "markup.deleted"
#       ],
#       "settings" => {
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "Changed",
#       "scope"  => [
#         "markup.changed"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "Regular Expressions",
#       "scope"  => [
#         "string.regexp"
#       ],
#       "settings" => {
#         "foreground" => "#89DDFF"
#       }
#     },
#     {
#       "name" => "Escape Characters",
#       "scope"  => [
#         "constant.character.escape"
#       ],
#       "settings" => {
#         "foreground" => "#89DDFF"
#       }
#     },
#     {
#       "name" => "URL",
#       "scope"  => [
#         "*url*",
#         "*link*",
#         "*uri*"
#       ],
#       "settings" => {
#         "fontStyle"  => "underline"
#       }
#     },
#     {
#       "name" => "Decorators",
#       "scope"  => [
#         "tag.decorator.js entity.name.tag.js",
#         "tag.decorator.js punctuation.definition.tag.js"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "ES7 Bind Operator",
#       "scope"  => [
#         "source.js constant.other.object.key.js string.unquoted.label.js"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 0",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 1",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => "#FFCB6B"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 2",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => orange
#       }
#     },
#     {
#       "name" => "JSON Key - Level 3",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => "#FF5370"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 4",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => "#C17E70"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 5",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "JSON Key - Level 6",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 7",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "JSON Key - Level 8",
#       "scope"  => [
#         "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
#       ],
#       "settings" => {
#         "foreground" => lime_green
#       }
#     },
#     {
#       "name" => "Markdown - Plain",
#       "scope"  => [
#         "text.html.markdown",
#         "punctuation.definition.list_item.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#EEFFFF"
#       }
#     },
#     {
#       "name" => "Markdown - Markup Raw Inline",
#       "scope"  => [
#         "text.html.markdown markup.inline.raw.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "Markdown - Markup Raw Inline Punctuation",
#       "scope"  => [
#         "text.html.markdown markup.inline.raw.markdown punctuation.definition.raw.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#65737E"
#       }
#     },
#     {
#       "name" => "Markdown - Line Break",
#       "scope"  => [
#         "text.html.markdown meta.dummy.line-break"
#       ],
#       "settings" => {
#       }
#     },
#     {
#       "name" => "Markdown - Heading",
#       "scope"  => [
#         "markdown.heading",
#         "markup.heading | markup.heading entity.name",
#         "markup.heading.markdown punctuation.definition.heading.markdown"
#       ],
#       "settings" => {
#         "foreground" => lime_green
#       }
#     },
#     {
#       "name" => "Markup - Italic",
#       "scope"  => [
#         "markup.italic"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Markup - Bold",
#       "scope"  => [
#         "markup.bold",
#         "markup.bold string"
#       ],
#       "settings" => {
#         "fontStyle"  => "bold",
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Markup - Bold-Italic",
#       "scope"  => [
#         "markup.bold markup.italic",
#         "markup.italic markup.bold",
#         "markup.quote markup.bold",
#         "markup.bold markup.italic string",
#         "markup.italic markup.bold string",
#         "markup.quote markup.bold string"
#       ],
#       "settings" => {
#         "fontStyle"  => "bold",
#         "foreground" => "#f07178"
#       }
#     },
#     {
#       "name" => "Markup - Underline",
#       "scope"  => [
#         "markup.underline"
#       ],
#       "settings" => {
#         "fontStyle"  => "underline",
#         "foreground" => orange
#       }
#     },
#     {
#       "name" => "Markup - Strike",
#       "scope"  => [
#         "markup.strike"
#       ],
#       "settings" => {
#         "fontStyle"  => "strike",
#       }
#     },
#     {
#       "name" => "Markdown - Blockquote",
#       "scope"  => [
#         "markup.quote punctuation.definition.blockquote.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#65737E"
#       }
#     },
#     {
#       "name" => "Markup - Quote",
#       "scope"  => [
#         "markup.quote"
#       ],
#       "settings" => {
#         "fontStyle"  => "italic",
#       }
#     },
#     {
#       "name" => "Markdown - Link",
#       "scope"  => [
#         "string.other.link.title.markdown"
#       ],
#       "settings" => {
#         "foreground" => blue
#       }
#     },
#     {
#       "name" => "Markdown - Link Description",
#       "scope"  => [
#         "string.other.link.description.title.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "Markdown - Link Anchor",
#       "scope"  => [
#         "constant.other.reference.link.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#FFCB6B"
#       }
#     },
#     {
#       "name" => "Markup - Raw Block",
#       "scope"  => [
#         "markup.raw.block"
#       ],
#       "settings" => {
#         "foreground" => "#C792EA"
#       }
#     },
#     {
#       "name" => "Markdown - Fenced Bode Block Variable",
#       "scope"  => [
#         "markup.fenced_code.block.markdown",
#         "markup.inline.raw.string.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#EEFFFF90"
#       }
#     },
#     {
#       "name" => "Markdown - Fenced Language",
#       "scope"  => [
#         "variable.language.fenced.markdown"
#       ],
#       "settings" => {
#         "foreground" => "#65737E"
#       }
#     },
#     {
#       "name" => "Markdown - Separator",
#       "scope"  => [
#         "meta.separator"
#       ],
#       "settings" => {
#         "fontStyle"  => "bold",
#         "foreground" => "#65737E"
#       }
#     },
#     {
#       "name" => "Markup - Table",
#       "scope"  => [
#         "markup.table"
#       ],
#       "settings" => {
#         "foreground" => "#EEFFFF"
#       }
#     },
#     #
#     #
#     # My Colorization
#     #
#     #
#         #
#         # peach hsl(24, 100%, 83%)
#         #
#         #
#         # gray
#         #
#             {
#                 "name" => "gray",
#                 "scope" => [
#                     "comment",
#                     "support.constant.subsections",
#                     "source.python string.quoted.docstring punctuation.definition.string.begin",
#                     "source.python string.quoted.docstring punctuation.definition.string.end",
#                     "comment.line.double-slash", # comment
#                     "punctuation.terminator", # semicolons
#                     "punctuation.definition.template-expression.begin", # interpolation
#                     "punctuation.definition.template-expression.end", # interpolation
#                     "punctuation.section.embedded.end",
#                     "punctuation.section.embedded.begin",
#                     "source.json punctuation.support.type.property-name.begin",
#                     "source.json punctuation.support.type.property-name.end",
#                     # namespace scoping in C++
#                     "entity.name.namespace.scope-resolution",
#                     "entity.name.type.namespace.scope-resolution",
#                     "meta.scope-resolution",
#                     "meta.scope-resolution punctuation.separator.comma.template.argument",
#                     "meta.scope-resolution entity",
#                     "meta.scope-resolution punctuation.separator.namespace.access",
#                     "meta.scope-resolution storage.type.user-defined",
#                     "meta.scope-resolution storage.type.primitive",
#                     "meta.scope-resolution keyword.operator.comparison",
#                     "meta.scope-resolution storage.type",
#                     "meta.scope-resolution constant.numeric",
#                     # cpp lambdas
#                     "punctuation.definition.lambda.return-type",
#                     "meta.lambda.capture",
#                     "meta.lambda.capture punctuation.separator.delimiter",
#                     "meta.lambda.capture variable.parameter.defaulted",
#                     "meta.lambda.capture variable.other.object",
#                     "meta.lambda.capture constant.numeric",
#                     "meta.lambda.capture keyword",
#                     "meta.lambda.capture keyword.operator",
#                     "meta.lambda.capture keyword.operator.assignment",
#                     "meta.lambda.capture punctuation.definition.begin.bracket.square",
#                     "meta.lambda.capture punctuation.definition.end.bracket.square",
#                     "punctuation.definition.capture.begin.lambda",
#                     "punctuation.definition.capture.end.lambda",
#                     # markdown
#                     "meta.paragraph.markdown",
#                     ],
#                 "settings" => {
#                     "foreground" => gray,  # palenight = 697098
#                 },
#             },
#             {
#                 "name" => "gray underline",
#                 "scope" => [
#                     "source.shell string.interpolated.dollar"
#                     ],
#                 "settings" => {
#                     "foreground" => gray,
#                     "fontStyle" => "underline"
#                 },
#             },
#         #
#         # Pure white
#         #
#             {
#                 "name" => "pure white",
#                 "scope" =>[

#                     ],
#                 "settings" => {
#                     "foreground" => pure_white,
#                 }
#             },
#         #
#         # off white
#         #
#             {
#                 "name" => "off white",
#                 "scope" =>[
#                     "punctuation.section.parens-c",
#                     "variable",
#                     "source.python",
#                     "variable.assignment.coffee",
#                     "source.coffee",
#                     "meta.brace.round.js",
#                     "support.variable.object.process.js",
#                     "meta.function-call",
#                     "meta.function-call.arguments.python",
#                     "variable.other.readwrite.js",
#                     "meta.var-single-variable.expr.js",
#                     "variable.other.constant",
#                     "variable.other.readwrite.ts",
#                     ],
#                 "settings" => {
#                     "foreground" => off_white,
#                 }
#             },
#             {
#                 "name" => "off white with underline",
#                 "scope" =>[
#                     "variable.other.object.js",
#                     "variable.other.readwrite.global", # global vars
#                     ],
#                 "settings" => {
#                     "foreground" => off_white,
#                     "fontStyle" => "underline"
#                 }
#             },
#         #
#         # Slate blue
#         #
#             {
#                 "name" => "slate bold",
#                 "scope" => [
#                 ],
#                 "settings" => {
#                     "foreground" => "#3f848d",
#                     "fontStyle" => "bold"
#                 }
#             },
#             {
#                 "name" => "slate",
#                 "scope" => [
#                 ],
#                 "settings" => {
#                     "foreground" => "#64bac5",
#                 }
#             },
#         #
#         # light blue
#         #
#             {
#                 "name" =>"light blue",
#                 "scope" =>[
#                     "keyword",
#                     "source.shell punctuation.definition.evaluation",
#                     "colon punctuation.separator",
#                     "meta.brace.round.ts",
#                     "colon punctuation.separator",
#                     "meta.brace.round.js",
#                     "keyword.other",
#                     "punctuation.range-based.cpp",
#                     "source.cpp punctuation.section.parens.begin.bracket.round",
#                     "source.cpp punctuation.section.parens.end.bracket.round",
#                     "keyword.control.directive",
#                     "punctuation.separator.colon.python", # : at the end of python statements
#                     "punctuation.section.function.begin.python", # : at the end of python statements
#                     # "meta.block.js", # brackets of code
#                     "source.cpp punctuation.section.block.begin.bracket.curly", # c++ {}
#                     "source.cpp punctuation.section.block.end.bracket.curly", # c++ {}
#                     # javascript {} for "if"
#                     "meta.block.js",
#                     "punctuation.definition.block.js",
#                     "punctuation.section.scope.begin",
#                     "punctuation.section.scope.end",
#                     # css keywords
#                     "support.constant.property-value.css",
#                     # yaml
#                     "keyword.control.flow.alias.yaml",
#                     "storage.modifier.chomping-indicator.yaml",
#                     # javascript module
#                     "support.type.object.module",
#                     ],
#                 "settings" => {
#                     "foreground" => "#89ddff",
#                 }
#             },
#             {
#                 "name" =>"light blue italic",
#                 "scope" =>[
#                     "keyword.control",
#                     "keyword.control.conditional", # if
#                     "keyword.control.loop",
#                     ],
#                 "settings" => {
#                     "foreground" => "#89ddff",
#                     "fontStyle" => "italic"
#                 }
#             },
#         #
#         # pink
#         #
#             {
#                 "name" => "pink",
#                 "scope" => [
#                     "source.shell punctuation.definition.group.shell",
#                     "keyword.other.typedef",
#                     "punctuation.section.arguments.begin.bracket.round.decltype.cpp",
#                     "punctuation.section.arguments.end.bracket.round.decltype.cpp",
#                     "source.go keyword.function",
#                     "source.go keyword.var",
#                     "punctuation.section.block.begin.bracket.curly.namespace",
#                     "punctuation.section.block.begin.bracket.curly.struct",
#                     "punctuation.section.block.begin.bracket.curly.class",
#                     "punctuation.section.block.begin.bracket.curly.enum",
#                     "punctuation.section.block.begin.bracket.curly.union",
#                     "punctuation.section.block.begin.bracket.curly.extern",
#                     "punctuation.section.block.end.bracket.curly.namespace",
#                     "punctuation.section.block.end.bracket.curly.struct",
#                     "punctuation.section.block.end.bracket.curly.class",
#                     "punctuation.section.block.end.bracket.curly.enum",
#                     "punctuation.section.block.end.bracket.curly.union",
#                     "punctuation.section.block.end.bracket.curly.extern",
#                     "storage.modifier.lambda",
#                     "storage.modifier.async",
#                     "storage.type",
#                     # keywords, structs, struct brackets
#                     "storage.type.modifier.access.control",
#                     "punctuation.section.angle-brackets.start.template.definition.cpp",
#                     "punctuation.section.angle-brackets.end.template.definition.cpp",
#                     "source.cpp storage.type.union",
#                     "source.cpp storage.type.enum",
#                     "storage.type",
#                     "template.definition meta.template.operator.comma.cpp",
#                     "storage.type.template.cpp",
#                     "storage.type.modifier.access.cpp",
#                     "storage.type.object.cpp",
#                     # lambdas
#                     "punctuation.section.block.begin.bracket.curly.lambda.cpp",
#                     "punctuation.section.block.end.bracket.curly.lambda.cpp",
#                 ],
#                 "settings" => {
#                     "foreground" => pink,
#                 }
#             },
#             {
#                 "name" => "pink underline",
#                 "scope" => [
#                     # objects

#                 ],
#                 "settings" => {
#                     "foreground" => pink,
#                     "fontStyle" => "underline"
#                 }
#             },
#             {
#                 "name" => "pink bold",
#                 "scope" => [
#                     "storage.type.asm",
#                     "punctuation.section.parens.begin.bracket.round.assembly",
#                     "punctuation.section.parens.end.bracket.round.assembly",
#                 ],
#                 "settings" => {
#                     "foreground" => pink,
#                     "fontStyle" => "bold"
#                 }
#             },

#         #
#         # purple
#         #
#             {
#                 "name" => "purple",
#                 "scope" => [
#                     "punctuation.accessor.attribute",
#                     "entity.name.namespace",
#                     "punctuation.section.arguments.begin.bracket.round.operator",
#                     "punctuation.section.arguments.end.bracket.round.operator",
#                     "punctuation.section.attribute",
#                     "entity.other.attribute",
#                     "entity.other",
#                     "punctuation.definition.scope.cpp",
#                     "keyword.operator",
#                     "keyword.operator.new.js", # new
#                     "keyword.operator.expression", # typeof, in, instanceof, of
#                     "keyword.operator.logical.python", # python "and" "or"
#                     "storage.modifier", # async
#                     "storage.type.property",
#                     "storage.type.function.arrow", # arrow func
#                     "storage.type.function.arrow.js", # arrow func
#                     "storage.type.function.arrow.js.jsx", # arrow func
#                     "variable.language.arguments.js", # "arguments" keyword
#                     "punctuation.separator", # dot operator
#                     "punctuation.section.embedded.begin.js",
#                     "punctuation.section.embedded.end.js",
#                     "entity.other.attribute-name.tag.pug",
#                     # jsx attribute assignments
#                     "meta.tag.attributes.js keyword.operator.assignment",
#                     ],
#                 "settings" => {
#                     "foreground" => purple,
#                 }
#             },
#             {
#                 "name" => "purple cursive",
#                 "scope" => [
#                     # jsx tag-attributes
#                     "entity.other.attribute-name",
#                     "entity.other.attribute-name.js.jsx",
#                     ],
#                 "settings" => {
#                     "foreground" => purple,
#                     "fontStyle" => "italic"
#                 }
#             },
#             {
#                 "name" => "purple underline",
#                 "scope" => [
#                     ],
#                 "settings" => {
#                     "foreground" => purple,
#                     "fontStyle" => "underline"
#                 }
#             },
#             {
#                 "name" => "purple bold",
#                 "scope" => [
#                         "source.shell punctuation.separator.statement",
#                         "source.shell keyword.operator.pipe",
#                         "punctuation.vararg-ellipses",
#                     ],
#                 "settings" => {
#                     "foreground" => purple,
#                     "fontStyle" => "bold"
#                 }
#             },

#         #
#         # blue
#         #
#             # alt blue = #569cd6
#             {
#                 "name" => "blue",
#                 "scope" => [
#                     "meta.embedded.assembly entity.name.function",
#                     "entity.name.command",
#                     "punctuation.definition.arguments.shell",
#                     "meta.asm meta.encoding",
#                     "punctuation.definition.string.begin.assembly",
#                     "punctuation.definition.string.end.assembly",
#                     "punctuation.section.parameters.begin.bracket.round",
#                     "punctuation.section.parameters.end.bracket.round",
#                     "punctuation.section.arguments.begin.bracket.round",
#                     "punctuation.section.arguments.end.bracket.round",
#                     "punctuation.section.block.begin.bracket.curly.function.definition",
#                     "punctuation.section.block.end.bracket.curly.function.definition",
#                     "punctuation.section.arguments.begin.bracket.round.function.member",
#                     "punctuation.section.arguments.end.bracket.round.function.member",
#                     "source.cpp entity.name.function",
#                     "source.go punctuation.other.period",
#                     "source.go punctuation.definition.begin.bracket.round",
#                     "source.go punctuation.definition.end.bracket.round",
#                     # functions
#                     "punctuation.section.block.begin.bracket.curly.lambda",
#                     "punctuation.section.block.end.bracket.curly.lambda",
#                     "punctuation.definition.parameters.ruby",
#                     "punctuation.section.function",
#                     "punctuation.definition.arguments.begin",
#                     "punctuation.definition.arguments.end",
#                     "punctuation.definition.parameters.begin",
#                     "punctuation.definition.parameters.end",
#                     "source.cpp meta.function-call punctuation.section.arguments.begin.bracket.round",
#                     "source.cpp meta.function-call punctuation.section.arguments.end.bracket.round",
#                     "source.cpp entity.name.function",
#                     "source.cpp meta.initialization variable.other",
#                     "source.cpp punctuation.separator.delimiter",
#                     "source.cpp punctuation.section.parens.begin.bracket.round.initialization",
#                     "source.cpp punctuation.section.parens.end.bracket.round.initialization",
#                     "source.cpp punctuation.section.parameters.begin.bracket.round",
#                     "source.cpp punctuation.section.parameters.end.bracket.round",
#                     "source.cpp meta.function-call.member punctuation.section.arguments.begin.bracket.round.function.member",
#                     "source.cpp meta.function-call.member punctuation.section.arguments.end.bracket.round.function.member",
#                     "source.cpp meta.function punctuation.section.arguments.begin.bracket.round",
#                     "source.cpp meta.function punctuation.section.arguments.end.bracket.round",
#                     "source.cpp meta.function punctuation.section.parameters.begin.bracket.round",
#                     "source.cpp meta.function punctuation.section.parameters.end.bracket.round",
#                     "source.cpp meta.function punctuation.separator.delimiter",
#                     "source.cpp punctuation.definition.parameters.begin",
#                     "source.cpp punctuation.definition.parameters.end",
#                     "entity.name.function",
#                     "support.function.dom.js",  # built in method
#                     "support.variable.property.js", # built in method
#                     "punctuation.definition.group.shell", # {}'s for bash
#                     "source.python meta.function-call.generic.python",
#                     # built-in funcs
#                     "support.function",
#                     "entity.other.attribute-name.js",
#                     "keyword.other.special-method", # ruby require
#                     "support.function.kernel.ruby", # ruby puts
#                     # all caps var js
#                     "variable.other.constant.js", # all caps var
#                     "variable.other.constant.object.js",
#                     # regex group
#                     "string.regexp.group punctuation.definition.group",
#                     "punctuation.definition.character-class",
#                     # css class
#                     "entity.other.attribute-name.class.css",
#                     # pug class
#                     "entity.other.attribute-name.class.pug",
#                     ],
#                 "settings" => {
#                     "foreground" => blue,
#                 }
#             },
#             {
#                 "name" => "blue underline",
#                 "scope" => [
#                     "variable.other.property.cpp",
#                     "meta.object-literal.key.js entity.name.function",
#                     "variable.other.member", # member ending
#                     "entity.name.function.member",
#                     "support.variable.property.js", # .__proto__
#                     "support.variable.property.dom.js", # built-in-attribute
#                     "meta.method.declaration.js support.function.dom.js",
#                     "meta.method.declaration.js entity.name.function.js",
#                     "support.variable.property.dom.js",
#                     "support.function.dom.js",
#                 ],
#                 "settings" => {
#                     "foreground" => blue,
#                     "fontStyle" => "underline"
#                 }
#             },
#             {
#                 "name" => "blue bold",
#                 "scope" => [
#                     "punctuation.definition.parameters.begin.lambda",
#                     "punctuation.definition.parameters.end.lambda",
#                 ],
#                 "settings" => {
#                     "foreground" => blue,
#                     "fontStyle" => "bold"
#                 }
#             },
#             {
#                 "name" => "blue italics",
#                 "scope" => [
#                     "support.function.builtin",
#                 ],
#                 "settings" => {
#                     "foreground" => blue,
#                     "fontStyle" => "italic"
#                 }
#             },


#         #
#         # dim green
#         #
#             {
#                 "name" => "dim green",
#                 "scope" =>[
#                     "meta.brace.curly.coffee",
#                     "meta.brace.square.ts",
#                     "source.cpp meta.block variable.other",
#                     "source.cpp keyword.operator.overload",
#                     "variable.other.property.coffee",
#                     "punctuation.definition.dictionary", # brackets
#                     "punctuation.section.property-list", # brackets
#                     "punctuation.definition.dict.begin.python", # brackets
#                     "punctuation.definition.dict.end.python", # brackets
#                     "punctuation.definition.list.begin.python",  # [] brackets
#                     "punctuation.definition.list.end.python", # [] brackets
#                     "punctuation.definition.begin.bracket.square",
#                     "punctuation.definition.end.bracket.square",
#                     "meta.item-access.python punctuation.definition.arguments.begin.python",
#                     "meta.item-access.python punctuation.definition.arguments.end.python",
#                     "string.regexp",
#                     "meta.objectliteral.js",
#                     "meta.object.member.js",
#                     ],
#                 "settings" => {
#                     "foreground" => dim_green,
#                 }
#             },
#             {
#                 "name" => "dim green with underline",
#                 "scope" => [
#                     "punctuation.separator.dot-access.c",
#                     "variable.other.property.ts",
#                     "punctuation.accessor.ts",
#                     "punctuation.accessor.js",
#                     "source.ruby constant.language.symbol punctuation.definition.constant.hashkey",
#                     "source.ruby constant.language.symbol.hashkey.ruby",
#                     "source.ruby constant.language.symbol.hashkey",
#                     "source.cpp variable.other.object",
#                     "source.cpp punctuation.separator.dot-access",
#                     "source.cpp punctuation.separator.pointer-access",
#                     "source.cpp support.type.posix-reserved",
#                     "support.type.property-name.json", # json
#                     "support.type.property-name.css", # css
#                     "entity.name.tag.yaml", # yaml
#                     "meta.brace.square.js",
#                     "meta.array.literal string.quoted",
#                     "meta.array.literial variable.other.readwrite.js",
#                     "meta.object-literal.key string.quoted", # js keys
#                     "punctuation.definition.group.js",
#                     "variable.other.object",
#                     "variable.other.property.js",
#                     "variable.other.object.property.js",
#                     "meta.brace.square.js - meta.var.expr", # js attribute
#                     "meta.object-literal.key.js", # javascript key
#                     "meta.method.declaration.js meta.brace.square.js",
#                     "meta.object-literal.key.js variable.other.readwrite.js - meta.var.expr",
#                     "meta.array.literal.js variable.other.readwrite.js",
#                     "variable.other.constant.property.js",
#                     "support.variable.property.process.js",
#                     # perl variables
#                     "variable.other.readwrite.global.perl",
#                     ],
#                 "settings" => {
#                     "foreground" => dim_green,
#                     "fontStyle" => "underline"
#                 }
#             },
#             {
#                 "name" => "dim green with italics",
#                 "scope" => [
#                     "variable.other.constant.js",
#                     ],
#                 "settings" => {
#                     "foreground" => dim_green,
#                     "fontStyle" => "italic"
#                 }
#             },
#         #
#         # green
#         #
#             {
#                 "name" => "green",
#                 "scope" => [
#                         "meta.encoding",
#                         "constant.other.option",
#                         "punctuation.definition.string.begin",
#                         "punctuation.definition.string.end",
#                         "keyword.other.special-method.ruby",
#                         "entity.name",
#                         # operator overloads
#                         "source.python support.function.magic.python",
#                         "source.python support.variable.magic.python",
#                         # regex string
#                         "string.regexp",
#                         # regex start/end
#                         "punctuation.section.regexp",
#                         # the |a| in ruby
#                         "punctuation.separator.variable.ruby",
#                         # array []'s
#                         "punctuation.section.array.begin",
#                         "punctuation.section.array.end",
#                         # quotes start/end
#                         "meta.fstring storage.type.string", # the f"" in python
#                         "punctuation.definition.string.begin",
#                         "punctuation.definition.string.end",
#                         "punctuation.definition.string.begin string.quoted.single",
#                         "punctuation.definition.string.end string.quoted.single",
#                         "string.regexp punctuation.definition.string.begin",
#                         "string.regexp punctuation.definition.string.end",
#                         "punctuation.definition.string.begin",
#                         "punctuation.definition.string.end",
#                         "punctuation.definition.string.template.begin",
#                         "punctuation.definition.string.template.end",
#                         "punctuation.support.type.property-name.begin",
#                         "punctuation.support.type.property-name.end",
#                         # assembly registers
#                         "variable.parameter.registers",

#                     ],
#                 "settings" => {
#                     "foreground" => green,
#                 }
#             },
#             {
#                 "name" => "green bold",
#                 "scope" => [
#                     "keyword.other.unit.user-defined.cpp",
#                     "punctuation.section.parens.begin.bracket.round.assembly.inner",
#                     "punctuation.section.parens.end.bracket.round.assembly.inner",
#                 ],
#                 "settings" => {
#                     "foreground" => "#4ec9b0d0",
#                     "fontStyle" => "bold"
#                 }
#             },
#         #
#         # lime green
#         #
#             {
#                 "name" => "lime green",
#                 "scope" =>[
#                     # strings
#                     "string.quoted",
#                     "string.template",
#                     "string.interpolated",
#                     "string.quoted.double",
#                     "string.quoted.single",
#                     "meta.structure.dictionary.value.json string.quoted.double",
#                     "meta.jsx.children", # text inside jsx tags
#                     # start of literal regex
#                     "punctuation.section.regexp",
#                     "storage.type.string", # the little r"" in python
#                     "string.regexp punctuation.definition.string.begin",
#                     "string.regexp punctuation.definition.string.end",
#                     # css colors
#                     "support.constant.color",
#                     "constant.other.color",
#                     "constant.other.color.rgb-value",
#                 ],
#                 "settings" => {
#                     "foreground" => lime_green,
#                 }
#             },
#             {
#                 "name" => "lime green with underline",
#                 "scope" =>[
#                     "source.python string.quoted.single",
#                     "source.python string",
#                     "source.shell string.quoted.single",
#                     "source.shell string.unquoted.argument",
#                     "source.shell string.quoted.double",
#                 ],
#                 "settings" => {
#                     "foreground" => lime_green,
#                     "fontStyle" => "underline"
#                 }
#             },

#         #
#         # Orange
#         #
#             {
#                 "name" => "orange",
#                 "scope" => [
#                     "constant.other",
#                     "constant.other.decimal",
#                     "punctuation.separator.variable.ruby",
#                     "source.ruby constant.language.symbol punctuation.definition.constant",
#                     "source.cpp meta.function.constructor.initializer-list.cpp entity.name.function",
#                     "source.cpp meta.function.constructor.initializer-list.cpp punctuation.section.parameters.begin.bracket.round",
#                     "source.cpp meta.function.constructor.initializer-list.cpp punctuation.section.parameters.end.bracket.round",
#                     # parameters,
#                     "variable.parameter",
#                     "variable.parameter.function",
#                     "variable.parameter.function.language.python",
#                     "keyword.other.unit", # css units
#                     "variable.other.normal.shell", # eval var in bash
#                     "variable.parameter.function.coffee",
#                     # constant literals (most languages)
#                     "constant.language",
#                     "constant.language.boolean",
#                     "constant.numeric",
#                     "constant.numeric.json.comments", # jsonc numeric
#                     "constant.numeric.decimal.js",
#                     "constant.language.null",
#                     "constant.language.nil",
#                     "constant.language.undefined",
#                     "constant.language.symbol",
#                     ],
#                 "settings" => {
#                     "foreground" => orange,
#                 }
#             },
#             {
#                 "name" => "orange underline",
#                 "scope" => [
#                     "source.shell variable.parameter.positional.shell",
#                     "source.shell variable.parameter.positional",
#                     "source.shell variable.parameter.positional.shell punctuation.definition.variable.shell",
#                     "source.shell variable.parameter.positional punctuation.definition.variable.shell",
#                     "source.shell punctuation.definition.variable",
#                     "meta.function.method.with-arguments constant.language.symbol.hashkey.parameter.function",
#                     "constant.other.character-class.regexp", # regex escape
#                     "constant.character.escape", # escaped chars
#                     ],
#                 "settings" => {
#                     "foreground" => orange,
#                     "fontStyle" => "underline"
#                 }
#             },
#             {
#                 "name" => "orange bold",
#                 "scope" => [
#                     "source.python constant.language"
#                     ],
#                 "settings" => {
#                     "foreground" => orange,
#                     "fontStyle" => "bold"
#                 }
#             },

#         #
#         # Golden Yellow
#         #
#             {
#                 "name" => "yellow cursive",
#                 "scope" => [
#                     "text.haml entity.other.attribute-name.id",
#                     "support.variable.dom",
#                     # css tag
#                     "entity.name.tag.css",
#                     # "keyword.operator.arithmetic.python",
#                     # "entity.name.function.python",
#                     "support.function.magic.python",
#                     "support.type.python",
#                     "support.class.builtin.js",
#                     "entity.other.attribute-name.html",
#                     "support.constant.math",
#                     "storage.modifier.glsl",
#                     ],
#                 "settings" => {
#                     "foreground" => golden_yellow,
#                     "fontStyle" => "italic"
#                 }
#             },
#             {
#                 "name" => "yellow not cursive",
#                 "scope" => [
#                         "source.python constant.other.caps",
#                         "source.python entity.name.function.decorator",
#                         "source.python punctuation.definition.decorator",
#                         "source.python meta.function.decorator punctuation.definition.arguments.begin",
#                         "source.python meta.function.decorator punctuation.definition.arguments.end",
#                         "source.c support.type.posix-reserved",
#                         "source.shell variable.other",
#                         "support.type.built-in.posix-reserved",
#                         "variable.other.constant.ruby",
#                         "source.go entity.name.package",
#                         "source.go keyword.operator.assignment",
#                         "storage.type.primitive",
#                         "storage.type.built-in.primitive",
#                         "source.go storage.type",
#                         "storage.type.primitive",
#                         "variable.other.readwrite.global.special.perl",
#                         "entity.name.type",
#                         "meta.angle-brackets.cpp",
#                         "entity.name.type.template.cpp",
#                         "meta.function.definition.parameters",
#                         "source.cpp meta.function.definition.parameters.operator-overload",
#                         "source.cpp support.type.posix-reserved",
#                         "source.cpp storage.modifier",
#                         "source.cpp storage.type.return-type",
#                         "source.cpp storage.type.primitive",
#                         "source.cpp storage.type.c",
#                         "source.cpp storage.type.user-defined",
#                         "meta.tag.js", # jsx tags
#                         "entity.name.tag.js", # jsx tags
#                         "support.class.component.js", # jsx tags
#                         "punctuation.definition.tag.begin.js", # jsx tags
#                         "punctuation.definition.tag.end.js",  # jsx tags
#                         "support.class", # console
#                         "support.constant.json", # JSON object
#                         "keyword.label.assembly",
#                         "entity",
#                         # pug id tag
#                         "entity.other.attribute-name.id.pug",
#                         "variable.other.constant", # 'Numeric' ruby
#                     ],
#                 "settings" => {
#                     "foreground" => golden_yellow,
#                 }
#             },
#             {
#                 "name" => "yellow underline",
#                 "scope" => [
#                     "source.shell variable.other.normal.shell",
#                     "variable.other.normal.shell punctuation.definition.variable.shell",
#                     "entity.name.function.constructor.cpp",
#                     "variable.other.positional.shell",
#                     "variable.other.positional.shell punctuation.definition.variable.shell",
#                     "variable.other.special.shell punctuation.definition.variable.shell",
#                     "variable.other.special.shell",
#                     ],
#                 "settings" => {
#                     "foreground" => golden_yellow,
#                     "fontStyle" => "underline"
#                 }
#             },
#         #
#         # pastel yellow
#         #
#             {
#                 "name" => "Bananna yellow",
#                 "scope" => [
#                     "keyword.other.unit",
#                     "punctuation.separator.constant.numeric", # C++ tickmark seperators
#                     ],
#                 "settings" => {
#                     "foreground" => bananna_yellow,
#                 }
#             },
#             {
#                 "name" => "Bananna yellow underline",
#                 "scope" => [
#                     "variable.other.readwrite.global.ruby",
#                     "variable.other.readwrite.global.ruby punctuation.definition.variable.ruby",
#                     "support.variable",
#                     "variable.other.readwrite",
#                     "source.cpp variable.other",
#                     ],
#                 "settings" => {
#                     "foreground" => bananna_yellow,
#                     "fontStyle" => "underline"
#                 }
#             },

#         #
#         # Red
#         #
#             {
#                 "name" => "red",
#                 "scope" =>[
#                     "source.ruby meta.function.method.with-arguments punctuation.definition.constant.hashkey",
#                     # assignments
#                     "keyword.operator.assignment",
#                     # this and self
#                     "variable.language.this",
#                     "variable.language.self",
#                     "variable.language.special.self.python",
#                     "variable.parameter.function.language.special.self.python",
#                     # yaml reference
#                     "variable.other.alias.yaml",
#                     ],
#                 "settings" => {
#                     "foreground" => red,
#                 }
#             },
#             {
#                 "name" => "red bold",
#                 "scope" =>[
#                     ],
#                 "settings" => {
#                     "foreground" => red,
#                     "fontStyle" => "bold"
#                 }
#             },
#             {
#                 "name" => "red underline",
#                 "scope" =>[
#                     "source.shell punctuation.definition.variable",
#                     "source.shell variable.language.special.wildcard",
#                     "source.shell variable.language.special.shell punctuation.definition.variable.shell",
#                     "source.shell variable.language.special.shell",
#                     ],
#                 "settings" => {
#                     "foreground" => red,
#                     "fontStyle" => "bold"
#                 }
#             },
#             {
#                 "name" => "soft red",
#                 "scope" =>[
#                     "variable.other.readwrite.class",
#                     "variable.other.assignment.go",
#                     "variable.other.normal.shell",
#                     "variable.other.normal.shell punctuation.definition.variable.shell",
#                     "punctuation.definition.tag.haml",
#                     # class variables ruby
#                     "variable.other.readwrite.instance",
#                     "meta.function.constructor.initializer-list.cpp meta.function.definition.parameters",
#                     "source.cpp constant.numeric",
#                     "punctuation.definition.variable.ruby",
#                     # other things
#                     "constant.language.json.comments",
#                     "entity.name.tag.structure.any.html",
#                     "entity.name.tag.html",
#                     "entity.name.tag.pug",
#                     "entity.name.tag.inline.any.html",
#                     # css id selector
#                     "entity.other.attribute-name.id",
#                     "entity.other.attribute-name.id.css",
#                     ],
#                 "settings" => {
#                     "foreground" => soft_red,
#                 }
#             },
#             {
#                 "name" => "soft red",
#                 "scope" =>[
#                     "source.cpp constant.language"
#                     ],
#                 "settings" => {
#                     "foreground" => soft_red,
#                     "fontStyle" => "bold",
#                 }
#             },
#         #
#         # bubble
#         #
#             {
#                 "name" => "bubble",
#                 "scope" =>[
#                     # objects
#                     # "source.cpp variable.object",

#                     # operators
#                     # "keyword.operator",
#                     # "keyword.operator.bitwise",
#                     # "keyword.operator.arithmetic",
#                     # "keyword.operator.comparison"

#                     # control statements
#                     # "keyword.control",

#                     # storage types
#                     # "source.cpp storage.type",
#                     # "storage.type.cpp",
#                     ],
#                 "settings" => {
#                     "fontStyle" => "bold",
#                 }
#             },
#     ],
#   "colors" => {
#     #
#     # Material UI colors
#     #
#     "focusBorder"                                  => "#FFFFFF00",
#     "editorHoverWidget.border"                     => "#FFFFFF10",
#     "tab.activeForeground"                         => pure_white,
#     "statusBar.debuggingForeground"                => pure_white,
#     "list.hoverForeground"                         => pure_white,
#     "terminal.ansiWhite"                           => pure_white,
#     "terminal.ansiBrightWhite"                     => pure_white,
#     "panelTitle.activeForeground"                  => pure_white,
#     "editorWhitespace.foreground"                  => "#EEFFFF40",
#     "editorLink.activeForeground"                  => "#EEFFFF",
#     "selection.background"                         => "#EEFFFF",
#     "textLink.activeForeground"                    => "#EEFFFF",
#     "editor.foreground"                            => "#EEFFFF",
#     "tab.unfocusedActiveForeground"                => "#EEFFFF",
#     "activityBar.foreground"                       => "#EEFFFF",
#     "titleBar.activeForeground"                    => "#EEFFFF",
#     "sideBarTitle.foreground"                      => "#EEFFFF",
#     "input.foreground"                             => "#EEFFFF",
#     "list.focusForeground"                         => "#EEFFFF",
#     "editorSuggestWidget.foreground"               => "#EEFFFF",
#     "panel.dropBackground"                         => "#EEFFFF",
#     "panelTitle.inactiveForeground"                => "#EEFFFF",
#     "notifications.foreground"                     => "#EEFFFF",
#     "breadcrumb.focusForeground"                   => "#EEFFFF",
#     "menu.foreground"                              => "#EEFFFF",
#     "menu.separatorBackground"                     => "#EEFFFF",
#     "settings.dropdownForeground"                  => "#EEFFFF",
#     "settings.numberInputForeground"               => "#EEFFFF",
#     "settings.textInputForeground"                 => "#EEFFFF",
#     "settings.checkboxForeground"                  => "#EEFFFF",
#     "editorIndentGuide.background"                 => "#37474F70",
#     "editorRuler.foreground"                       => "#37474F",
#     "editorLineNumber.foreground"                  => "#37474F",
#     "editorIndentGuide.activeBackground"           => "#37474F",
#     "sideBar.border"                               => "#26323860",
#     "titleBar.border"                              => "#26323860",
#     "sideBarSectionHeader.border"                  => "#26323860",
#     "activityBar.border"                           => "#26323860",
#     "statusBar.border"                             => "#26323860",
#     "scrollbar.shadow"                             => "#26323800",
#     "editorBracketMatch.background"                => "#263238",
#     "editor.background"                            => "#263238",
#     "editorOverviewRuler.border"                   => "#263238",
#     "editorHoverWidget.background"                 => "#263238",
#     "editorGroupHeader.tabsBackground"             => "#263238",
#     "tab.inactiveBackground"                       => "#263238",
#     "tab.border"                                   => "#263238",
#     "statusBar.noFolderBackground"                 => "#263238",
#     "statusBar.background"                         => "#263238",
#     "activityBar.background"                       => "#263238",
#     "titleBar.activeBackground"                    => "#263238",
#     "titleBar.inactiveBackground"                  => "#263238",
#     "sideBar.background"                           => "#263238",
#     "sideBarSectionHeader.background"              => "#263238",
#     "input.background"                             => "#303C41",
#     "dropdown.background"                          => "#263238",
#     "list.hoverBackground"                         => "#263238",
#     "list.activeSelectionBackground"               => "#263238",
#     "editorMarkerNavigation.background"            => "#EEFFFF05",
#     "peekViewEditor.background"                    => "#EEFFFF05",
#     "peekViewTitle.background"                     => "#EEFFFF05",
#     "peekViewResult.background"                    => "#EEFFFF05",
#     "peekViewEditorGutter.background"              => "#EEFFFF05",
#     "input.border"                                 => "#FFFFFF10",
#     "scrollbarSlider.hoverBackground"              => "#EEFFFF10",
#     "editorSuggestWidget.border"                   => "#FFFFFF10",
#     "dropdown.border"                              => "#FFFFFF10",
#     "list.focusBackground"                         => "#EEFFFF20",
#     "scrollbarSlider.background"                   => "#EEFFFF20",
#     "input.placeholderForeground"                  => "#EEFFFF60",
#     "peekViewTitleDescription.foreground"          => "#EEFFFF60",
#     "panel.border"                                 => "#26323860",
#     "editorSuggestWidget.background"               => "#263238",
#     "editorWidget.background"                      => "#263238",
#     "panel.background"                             => "#263238",
#     "debugToolBar.background"                      => "#263238",
#     "breadcrumb.background"                        => "#263238",
#     "breadcrumbPicker.background"                  => "#263238",
#     "menu.background"                              => "#263238",
#     "settings.dropdownBackground"                  => "#263238",
#     "settings.numberInputBackground"               => "#263238",
#     "settings.textInputBackground"                 => "#263238",
#     "settings.checkboxBackground"                  => "#263238",
#     "notifications.background"                     => "#263238",
#     "list.inactiveSelectionBackground"             => "#00000030",
#     "widget.shadow"                                => "#00000030",
#     "peekView.border"                              => "#00000030",
#     "badge.background"                             => "#00000030",
#     "menu.selectionBorder"                         => "#00000030",
#     "menubar.selectionBackground"                  => "#00000030",
#     "menubar.selectionBorder"                      => "#00000030",
#     "listFilterWidget.background"                  => "#00000030",
#     "editorGroup.border"                           => "#00000030",
#     "listFilterWidget.outline"                     => "#00000030",
#     "listFilterWidget.noMatchesOutline"            => "#00000030",
#     "menu.selectionBackground"                     => "#00000050",
#     "editorSuggestWidget.selectedBackground"       => "#00000050",
#     "editor.lineHighlightBackground"               => "#00000050",
#     "activityBarBadge.foreground"                  => "#000000",
#     "terminal.ansiBlack"                           => "#000000",
#     "peekViewResult.selectionBackground"           => "#607a8670",
#     "gitDecoration.ignoredResourceForeground"      => "#607a8690",
#     "editorLineNumber.activeForeground"            => "#607a86",
#     "tab.activeModifiedBorder"                     => "#607a86",
#     "tab.inactiveForeground"                       => "#607a86",
#     "titleBar.inactiveForeground"                  => "#607a86",
#     "sideBar.foreground"                           => "#607a86",
#     "statusBarItem.hoverBackground"                => "#546E7A20",
#     "statusBar.foreground"                         => "#546E7A",
#     "tab.unfocusedActiveBorder"                    => "#546E7A",
#     "badge.foreground"                             => "#546E7A",
#     "terminal.ansiBrightBlack"                     => "#546E7A",
#     "inputValidation.warningBorder"                => "#FFCB6B50",
#     "editorBracketMatch.border"                    => "#FFCC0050",
#     "editor.selectionHighlightBackground"          => "#FFCC0020",
#     "editorCursor.foreground"                      => "#FFCC00",
#     "diffEditor.removedTextBackground"             => "#FF537020",
#     "inputValidation.errorBorder"                  => "#FF537050",
#     "editorGutter.deletedBackground"               => "#FF537060",
#     "editorError.foreground"                       => "#FF537070",
#     "gitDecoration.deletedResourceForeground"      => "#FF537090",
#     "terminal.ansiBrightRed"                       => "#FF5370",
#     "terminal.ansiRed"                             => "#FF5370",
#     "diffEditor.insertedTextBackground"            => "#C3E88D15",
#     "editorGutter.addedBackground"                 => "#C3E88D60",
#     "editorWarning.foreground"                     => "#C3E88D70",
#     "extensionButton.prominentBackground"          => "#C3E88D90",
#     "gitDecoration.untrackedResourceForeground"    => "#C3E88D90",
#     "extensionButton.prominentHoverBackground"     => lime_green,
#     "terminal.ansiGreen"                           => lime_green,
#     "terminal.ansiBrightGreen"                     => lime_green,
#     "gitDecoration.conflictingResourceForeground"  => "#FFCB6B90",
#     "terminal.ansiYellow"                          => "#FFCB6B",
#     "terminal.ansiBrightYellow"                    => "#FFCB6B",
#     "button.background"                            => "#80CBC420",
#     "peekViewResult.matchHighlightBackground"      => "#80CBC420",
#     "peekViewEditor.matchHighlightBackground"      => "#80CBC420",
#     "editor.selectionBackground"                   => "#80CBC420",
#     "scrollbarSlider.activeBackground"             => dim_green,
#     "progressBar.background"                       => dim_green,
#     "textLink.foreground"                          => dim_green,
#     "tab.activeBorder"                             => dim_green,
#     "activityBarBadge.background"                  => dim_green,
#     "list.activeSelectionForeground"               => dim_green,
#     "list.inactiveSelectionForeground"             => dim_green,
#     "list.highlightForeground"                     => dim_green,
#     "editorSuggestWidget.highlightForeground"      => dim_green,
#     "editorWidget.resizeBorder"                    => dim_green,
#     "panelTitle.activeBorder"                      => dim_green,
#     "notificationLink.foreground"                  => dim_green,
#     "pickerGroup.foreground"                       => dim_green,
#     "breadcrumb.activeSelectionForeground"         => dim_green,
#     "menu.selectionForeground"                     => dim_green,
#     "menubar.selectionForeground"                  => dim_green,
#     "settings.headerForeground"                    => dim_green,
#     "settings.modifiedItemIndicator"               => dim_green,
#     "terminal.ansiCyan"                            => "#89DDFF",
#     "terminal.ansiBrightCyan"                      => "#89DDFF",
#     "inputValidation.infoBorder"                   => "#82AAFF50",
#     "editorGutter.modifiedBackground"              => "#82AAFF60",
#     "gitDecoration.modifiedResourceForeground"     => "#82AAFF90",
#     "terminal.ansiBlue"                            => blue,
#     "terminal.ansiBrightBlue"                      => blue,
#     "terminal.ansiMagenta"                         => "#C792EA",
#     "terminal.ansiBrightMagenta"                   => "#C792EA",
#     "statusBar.debuggingBackground"                => "#C792EA",
#     #
#     # My colors
#     #
#         # tab backgrounds
#         "editorGroupHeader.tabsBackground" => tab_color,
#         "tab.activeBackground"             => tab_color,
#         "tab.border"                       => tab_color,
#         "tab.inactiveBackground"           => tab_color,
#         "titleBar.activeBackground"        => tab_color,
#         # active tab underline
#         "tab.activeBorder"                => "#C8C8C8", # palenight = 262A39
#         # Search colors
#         "editor.findMatchBorder" =>              cursor_color,
#         "editor.findMatchBackground" =>          cursor_color + "a1",
#         "editor.findMatchHighlightBorder" =>     found_match_color,
#         "editor.findMatchHighlightBackground" => found_match_color, # palenight = 2E3248
#         # hightlight
#         "editor.lineHighlightBackground" =>          "#2d3e51", # palenight = 0003
#         "selection.background" =>                    "#83b2e186", # palenight = 3C435E
#         "editor.selectionBackground" =>              "#83b2e157", # palenight = 7580B850
#         "editor.wordHighlightStrongBackground" =>    "#83b2e1b3", # palenight = 2E3250
#         "editor.wordHighlightBackground" =>          "#83b2e1b3", # palenight = 32374D
#         "editor.selectionHighlightBackground" =>     "#83b2e1b3", # palenight = 383D51
#         # whitespace
#         "editorWhitespace.foreground" =>  whitespace_color,
#         "editorIndentGuide.background" => whitespace_color,
#         # background color
#         "dropdown.background"                    => background_color,
#         "sideBar.background"                     => background_color,
#         "sideBarSectionHeader.background"        => background_color,
#         "editor.background"                      => background_color,
#         "editorHoverWidget.background"           => background_color,
#         "debugExceptionWidget.background"        => background_color,
#         "peekViewTitle.background"               => background_color,
#         "panel.background"                       => background_color,
#         "statusBar.noFolderBackground"           => background_color,
#         "debugToolBar.background"                => background_color,
#         "scrollbar.shadow"                       => background_color,
#         "statusBar.border"                       => background_color,
#         "editorGroupHeader.tabsBorder"           => background_color,
#         "tab.unfocusedActiveBorder"              => background_color,
#         "statusBar.debuggingBorder"              => background_color,
#         "statusBar.debuggingBackground"          => background_color,
#         "statusBarItem.activeBackground"         => background_color,
#         "statusBarItem.hoverBackground"          => background_color,
#         "statusBarItem.prominentBackground"      => background_color,
#         "statusBarItem.prominentHoverBackground" => background_color,
#         "sideBar.border"                         => background_color,
#         "panel.border"                           => background_color,
#         "editorSuggestWidget.background"         => background_color,
#         "editorWidget.background"                => background_color,
#         "panel.background"                       => background_color,
#         "debugToolBar.background"                => background_color,
#         "menu.background"                        => background_color,
#         "settings.dropdownBackground"            => background_color,
#         "settings.numberInputBackground"         => background_color,
#         "settings.textInputBackground"           => background_color,
#         "settings.checkboxBackground"            => background_color,
#         "notifications.background"               => background_color,
#         "breadcrumb.background"                  => background_color,
#         # secondary background
#         "activityBar.background"                 => background_color,
#         "activityBar.border"                     => background_color,
#         "statusBar.background"                   => background_color,
#         "editorWidget.background"                => background_color,
#         "editorMarkerNavigation.background"      => background_color,
#         "editorGroupHeader.noTabsBackground"     => background_color,
#         # popups
#         "notifications.background"               => popup_color,
#         "breadcrumbPicker.background"            => popup_color,
#         # foregrounds
#         "breadcrumb.foreground"         => gray + "78",
#         "sideBar.foreground"            =>"#617396",
#         "input.background"              =>"#414863",
#         "input.border"                  =>"#414863",
#         "editorLineNumber.foreground"   =>"#4c5374",
#         # search box border (transparent)
#         "contrastBorder" =>                   "#FFFFFF00", # palenight = 282B3C
#         # hover color
#         "editorSuggestWidget.border"           => popup_color, # palenight = 2B2F40
#         "editorSuggestWidget.background"       => popup_color,
#         "list.dropBackground"                  => popup_color, # palenight = 2E3245
#         "list.hoverBackground"                 => popup_color, # 414863
#         "editorGroup.border"                   => popup_color,
#         "peekViewResult.background"            => popup_color,
#         "pickerGroup.border"                   => popup_color,
#         # accent
#         "button.hoverBackground" =>                        "#2670a1", # palenight = 7e57c2
#         "dropdown.border" =>                               "#2670a1",
#         "badge.background" =>                              "#2670a1",
#         "list.activeSelectionBackground" =>                "#2670a1",
#         "list.focusBackground" =>                          "#2670a1",
#         "activityBarBadge.background" =>                   "#2670a1",
#         "editorOverviewRuler.currentContentForeground" =>  "#2670a1",
#         "editorOverviewRuler.incomingContentForeground" => "#2670a1",
#         "editorOverviewRuler.commonContentForeground" =>   "#2670a1",
#         "editorSuggestWidget.selectedBackground" =>        "#2670a1",
#         "editorHoverWidget.border" =>                      "#2670a1",
#         "debugExceptionWidget.border" =>                   "#2670a1",
#         "peekView.border" =>                               "#2670a1",
#         "panelTitle.activeBorder" =>                       "#2670a1",
#         "extensionButton.prominentHoverBackground" =>      "#2670a1",
#         "editor.inactiveSelectionBackground" =>            "#2670a15a",
#         "editor.hoverHighlightBackground" =>               "#2670a15a",
#         "editor.rangeHighlightBackground" =>               "#2670a15a",
#         "peekViewEditor.matchHighlightBackground" =>       "#2670a15a",
#         "peekViewResult.matchHighlightBackground" =>       "#2670a15a",
#         "merge.currentHeaderBackground" =>                 "#2670a15a",
#         "merge.incomingHeaderBackground" =>                "#2670a15a",
#         "editorGroup.dropBackground" =>                    "#2670a173",
#         "button.background" =>                             "#2670a1cc",
#         "extensionButton.prominentBackground" =>           "#2670a1cc",
#         "activityBar.dropBackground" =>                    "#2670a1e3",
#         # focus outline
#         "focusBorder" =>               "#ffffff4e", # 1e2c3b, 233345, 324962, 2670a1
#         # cursor color
#         "editorCursor.foreground" =>                 cursor_color,
#         # scrollbar
#         "scrollbarSlider.background" =>              "#324962", # palenight = 694CA466
#         "scrollbarSlider.activeBackground" =>        "#324962",
#         "scrollbarSlider.hoverBackground" =>         "#324962",
#         # status bar font color
#         "statusBar.foreground" =>                    "#5e718a", # palenight = 676E95
#         "terminal.ansiBlack" =>                      "#5e718a",
#         "terminal.ansiBrightBlack" =>                "#5e718a",

#         #
#         # misc
#         #
#             "titleBar.activeForeground" =>           "#eeefff",
#             "editorLineNumber.activeForeground" =>   "#eeffff",
#             "activityBar.foreground" =>              "#eeffff",
#             "sideBarTitle.foreground" =>             "#eeffff",
#             "sideBarSectionHeader.foreground" =>     "#eeffff",
#             "tab.activeForeground" =>                "#eeffff",
#             "peekViewResult.fileForeground" =>       "#eeffff",
#             "peekViewResult.lineForeground" =>       "#eeffff",
#             "peekViewResult.selectionForeground" =>  "#eeffff",
#             "peekViewTitleLabel.foreground" =>       "#eeffff",
#             "panelTitle.activeForeground" =>         "#eeffff",
#             "foreground" =>                               "#eeffff",
#             "badge.foreground" =>                         "#eeffff",
#             "list.activeSelectionForeground" =>           "#eeffff",
#             "list.focusForeground" =>                     "#eeffff",
#             "list.highlightForeground" =>                 "#eeffff",
#             "list.hoverForeground" =>                     "#eeffff",
#             "activityBarBadge.foreground" =>              "#eeffff",
#             "editorSuggestWidget.highlightForeground" =>  "#eeffff",
#             "terminal.ansiWhite" =>                       "#eeffff",
#             "terminal.ansiBrightWhite" =>                 "#eeffff",
#             "button.foreground" =>                        "#eeffffcc",
#             "dropdown.foreground" =>                      "#eeffffcc",
#             "input.foreground" =>                         "#eeffffcc",
#             "input.placeholderForeground" =>              "#eeffffcc",
#             "inputOption.activeBorder" =>                 "#eeffffcc",
#             "notifications.foreground" =>                 "#eeffffcc",
#             "extensionButton.prominentForeground" =>      "#eeffffcc",
#             # "contrastActiveBorder" =>                 nil,
#             # "tab.unfocusedActiveForeground" =>        nil,
#             # "tab.unfocusedInactiveForeground" =>      nil,
#             # "editor.findRangeHighlightBackground" =>  nil,
#             # "editor.lineHighlightBorder" =>           nil,
#             # "editorLink.activeForeground" =>          nil,
#             # "editorRuler.foreground" =>               nil,
#             # "editorBracketMatch.background" =>        nil,
#             # "editorBracketMatch.border" =>            nil,
#             # "editorError.border" =>                   nil,
#             # "editorWarning.border" =>                 nil,
#             # "editorGutter.background" =>              nil,
#             # "editorWidget.border" =>                  nil,
#             # "merge.currentContentBackground" =>       nil,
#             # "merge.incomingContentBackground" =>      nil,
#             # "merge.border" =>                         nil,
#             # "statusBar.debuggingForeground" =>        nil,
#             # "statusBar.noFolderForeground" =>         nil,
#             # "titleBar.inactiveBackground" =>          nil,
#             # "titleBar.inactiveForeground" =>          nil,
#             # "welcomePage.buttonBackground" =>         nil,
#             # "welcomePage.buttonHoverBackground" =>    nil,

#             # still purple-tinted
#             "widget.shadow" =>                        "#232635", # palenight = 232635
#             "peekViewEditor.background" =>            "#232635", # palenight = 232635
#             "walkThrough.embeddedEditorBackground" => "#232635", # palenight = 232635
#             "statusBar.noFolderBorder" =>  "#25293A", # palenight = 25293A
#             "peekViewResult.selectionBackground" =>      "#83b2e1b3", # palenight = 2E3250
#             "editorGroup.background" =>              "#32374C", # palenight = 32374C
#             "tab.inactiveForeground" =>                    "#ffffff4e", # palenight = 929ac9
#             "list.inactiveSelectionForeground" =>          "#708aa1", # palenight = 929ac9
#             "peekViewTitleDescription.foreground" =>       "#708aa1",
#             "list.inactiveSelectionBackground" =>          "#708aa10d", # palenight = 929ac90d
#             "gitDecoration.ignoredResourceForeground" =>   "#708aa190",

#             "inputValidation.infoBorder" =>              "#64B5F6",
#             "inputValidation.infoBackground" =>          "#64b5f6f2",

#             "notificationLink.foreground" =>               dim_green,

#             "terminal.ansiBlue" =>                         blue,
#             "terminal.ansiBrightBlue" =>                   blue,
#             "gitDecoration.modifiedResourceForeground" =>  "#0c6ce1ca",

#             "terminal.ansiCyan" =>                         "#89DDFF",
#             "terminal.ansiBrightCyan" =>                   "#89DDFF",

#             "diffEditor.insertedTextBackground" =>         "#99b76d23",

#             "editorGutter.addedBackground" =>              "#9CCC65",

#             "terminal.ansiGreen" =>                        "#a9c77d",
#             "diffEditor.insertedTextBorder" =>             "#a9c77d33",
#             "gitDecoration.untrackedResourceForeground" => "#a9c77dff",

#             "editor.foreground" =>                         "#bfc9d5", # palenight = BFC7D5
#             "editorSuggestWidget.foreground" =>            "#bfc9d5",
#             "panelTitle.inactiveForeground" =>             "#bfc9d580",
#             "terminal.ansiBrightGreen" =>                  lime_green,
#             "terminal.ansiMagenta" =>                      "#C792EA",
#             "terminal.ansiBrightMagenta" =>                "#C792EA",
#             "pickerGroup.foreground" =>                    "#d1aaff",
#             "editorGutter.modifiedBackground" =>           "#e2b93d",


#             "inputValidation.warningBackground" =>           "#ffca28f2",
#             "terminal.ansiYellow" =>                         "#FFCB6B",
#             "terminal.ansiBrightYellow" =>                   "#FFCB6B",
#             "gitDecoration.conflictingResourceForeground" => "#FFEB95CC",

#             "inputValidation.warningBorder" =>            "#FFCA28",
#             "editorCodeLens.foreground" =>                "#FFCA28",
#             "editorWarning.foreground" =>                 "#FFCA28",
#             "editorMarkerNavigationWarning.background" => "#FFCA28",

#             "errorForeground" =>                        "#FFCB6B", # palenight = EF5350
#             "inputValidation.errorBorder" =>            "#EF5350",
#             "editorError.foreground" =>                 "#EF5350",
#             "editorGutter.deletedBackground" =>         "#EF5350",
#             "editorMarkerNavigationError.background" => "#EF5350",

#             "diffEditor.removedTextBackground" =>        "#ef535033",
#             "diffEditor.removedTextBorder" =>            "#ef53504d",
#             "gitDecoration.deletedResourceForeground" => "#EF535090",
#             "inputValidation.errorBackground" =>         "#ef5350f2",
#             "terminal.ansiRed" =>                        red,
#             "terminal.ansiBrightRed" =>                  red,

#     }
# }

theme = {
    "name" => "XD",
    "type" => "dark",
    "tokenColors" => [
        # TODO: figure out what this is, and how to set the background
        {
            "settings" => {
                "background" => "#263238",
                "foreground" => "#FFFFFF"
            }
        },
        {
            "name" => "Comment",
            "scope" => [
                "comment",
                "punctuation.definition.comment",
                "string.quoted.docstring"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#546E7A"
            }
        },
        {
            "name" => "Variables",
            "scope" => [
                "variable",
                "string constant.other.placeholder"
            ],
            "settings" => {
                "foreground" => "#EEFFFF"
            }
        },
        {
            "name" => "PHP Constants",
            "scope" => [
                "constant.other.php"
            ],
            "settings" => {
                "foreground" => "#FFCB6B"
            }
        },
        {
            "name" => "Colors",
            "scope" => [
                "constant.other.color"
            ],
            "settings" => {
                "foreground" => "#FFFFFF"
            }
        },
        {
            "name" => "Invalid",
            "scope" => [
                "invalid",
                "invalid.illegal"
            ],
            "settings" => {
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "Invalid deprecated",
            "scope" => [
                "invalid.deprecated"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "Keyword, Storage",
            "scope" => [
                "storage.modifier"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "Keyword, Storage",
            "scope" => [
                "Keyword",
                "Storage"
            ],
            "settings" => {
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "Operator, Misc",
            "scope" => [
                "keyword.control",
                "constant.other.color",
                "punctuation",
                "punctuation.definition.tag",
                "punctuation.separator.inheritance.php",
                "punctuation.definition.tag.html",
                "punctuation.definition.tag.begin.html",
                "punctuation.definition.tag.end.html",
                "punctuation.section.embedded",
                "keyword.other.template",
                "keyword.other.substitution"
            ],
            "settings" => {
                "foreground" => "#89DDFF"
            }
        },
        {
            "name" => "Keyword Control",
            "scope" => [
                "keyword.control"
            ],
            "settings" => {
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "Tag",
            "scope" => [
                "entity.name.tag",
                "markup.deleted.git_gutter"
            ],
            "settings" => {
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Function, Special Method",
            "scope" => [
                "entity.name.function",
                "variable.function",
                "support.function",
                "keyword.other.special-method"
            ],
            "settings" => {
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "C-related Block Level Variables",
            "scope" => [
                "source.cpp meta.block variable.other"
            ],
            "settings" => {
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Variables constant",
            "scope" => [
                "variable.other.constant"
            ],
            "settings" => {
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Other Variable, String Link",
            "scope" => [
                "support.other.variable",
                "string.other.link"
            ],
            "settings" => {
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Number, Constant, Function Argument, Tag Attribute, Embedded",
            "scope" => [
                "constant.numeric",
                "constant.language",
                "support.constant",
                "constant.character",
                "constant.escape",
                "keyword.other.unit",
                "keyword.other"
            ],
            "settings" => {
                "foreground" => "#F78C6C"
            }
        },
        {
            "name" => "Number, Constant, Function Argument, Tag Attribute, Embedded",
            "scope" => [
                "variable.parameter.function.language.special",
                "variable.parameter"
            ],
            "settings" => {
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "String, Symbols, Inherited Class, Markup Heading",
            "scope" => [
                "string",
                "constant.other.symbol",
                "constant.other.key",
                "entity.other.inherited-class",
                "markup.heading",
                "markup.inserted.git_gutter",
                "meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js"
            ],
            "settings" => {
                "fontStyle" => "normal",
                "foreground" => "#C3E88D"
            }
        },
        {
            "name" => "Class, Support",
            "scope" => [
                "entity.name",
                "support.type",
                "support.class",
                "support.orther.namespace.use.php",
                "support.other.namespace.php",
                "markup.changed.git_gutter",
                "support.type.sys-types"
            ],
            "settings" => {
                "foreground" => "#FFCB6B"
            }
        },
        {
            "name" => "Entity Types",
            "scope" => [
                "support.type"
            ],
            "settings" => {
                "foreground" => "#B2CCD6"
            }
        },
        {
            "name" => "CSS Class and Support",
            "scope" => [
                "source.css support.type.property-name",
                "source.sass support.type.property-name",
                "source.scss support.type.property-name",
                "source.less support.type.property-name",
                "source.stylus support.type.property-name",
                "source.postcss support.type.property-name"
            ],
            "settings" => {
                "foreground" => "#B2CCD6"
            }
        },
        {
            "name" => "Sub-methods",
            "scope" => [
                "entity.name.module.js",
                "variable.import.parameter.js",
                "variable.other.class.js"
            ],
            "settings" => {
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "Language methods",
            "scope" => [
                "variable.language"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "entity.name.method.js",
            "scope" => [
                "entity.name.method.js"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "meta.method.js",
            "scope" => [
                "meta.class-method.js entity.name.function.js",
                "variable.function.constructor"
            ],
            "settings" => {
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "Attributes",
            "scope" => [
                "entity.other.attribute-name"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "CSS Classes",
            "scope" => [
                "entity.other.attribute-name.class"
            ],
            "settings" => {
                "foreground" => "#FFCB6B"
            }
        },
        {
            "name" => "CSS ID's",
            "scope" => [
                "source.sass keyword.control"
            ],
            "settings" => {
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "Inserted",
            "scope" => [
                "markup.inserted"
            ],
            "settings" => {
                "foreground" => "#C3E88D"
            }
        },
        {
            "name" => "Deleted",
            "scope" => [
                "markup.deleted"
            ],
            "settings" => {
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "Changed",
            "scope" => [
                "markup.changed"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "Regular Expressions",
            "scope" => [
                "string.regexp"
            ],
            "settings" => {
                "foreground" => "#89DDFF"
            }
        },
        {
            "name" => "Escape Characters",
            "scope" => [
                "constant.character.escape"
            ],
            "settings" => {
                "foreground" => "#89DDFF"
            }
        },
        {
            "name" => "URL",
            "scope" => [
                "*url*",
                "*link*",
                "*uri*"
            ],
            "settings" => {
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "Decorators",
            "scope" => [
                "tag.decorator.js entity.name.tag.js",
                "tag.decorator.js punctuation.definition.tag.js"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "ES7 Bind Operator",
            "scope" => [
                "source.js constant.other.object.key.js string.unquoted.label.js"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "JSON Key - Level 0",
            "scope" => [
                "source.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "JSON Key - Level 1",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#FFCB6B"
            }
        },
        {
            "name" => "JSON Key - Level 2",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#F78C6C"
            }
        },
        {
            "name" => "JSON Key - Level 3",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#FF5370"
            }
        },
        {
            "name" => "JSON Key - Level 4",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#C17E70"
            }
        },
        {
            "name" => "JSON Key - Level 5",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "JSON Key - Level 6",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "JSON Key - Level 7",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "JSON Key - Level 8",
            "scope" => [
                "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
            ],
            "settings" => {
                "foreground" => "#C3E88D"
            }
        },
        {
            "name" => "Markdown - Plain",
            "scope" => [
                "text.html.markdown",
                "punctuation.definition.list_item.markdown"
            ],
            "settings" => {
                "foreground" => "#EEFFFF"
            }
        },
        {
            "name" => "Markdown - Markup Raw Inline",
            "scope" => [
                "text.html.markdown markup.inline.raw.markdown"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "Markdown - Markup Raw Inline Punctuation",
            "scope" => [
                "text.html.markdown markup.inline.raw.markdown punctuation.definition.raw.markdown"
            ],
            "settings" => {
                "foreground" => "#65737E"
            }
        },
        {
            "name" => "Markdown - Line Break",
            "scope" => [
                "text.html.markdown meta.dummy.line-break"
            ],
            "settings" => {}
        },
        {
            "name" => "Markdown - Heading",
            "scope" => [
                "markdown.heading",
                "markup.heading | markup.heading entity.name",
                "markup.heading.markdown punctuation.definition.heading.markdown"
            ],
            "settings" => {
                "foreground" => "#C3E88D"
            }
        },
        {
            "name" => "Markup - Italic",
            "scope" => [
                "markup.italic"
            ],
            "settings" => {
                "fontStyle" => "italic",
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Markup - Bold",
            "scope" => [
                "markup.bold",
                "markup.bold string"
            ],
            "settings" => {
                "fontStyle" => "bold",
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Markup - Bold-Italic",
            "scope" => [
                "markup.bold markup.italic",
                "markup.italic markup.bold",
                "markup.quote markup.bold",
                "markup.bold markup.italic string",
                "markup.italic markup.bold string",
                "markup.quote markup.bold string"
            ],
            "settings" => {
                "fontStyle" => "bold",
                "foreground" => "#f07178"
            }
        },
        {
            "name" => "Markup - Underline",
            "scope" => [
                "markup.underline"
            ],
            "settings" => {
                "fontStyle" => "underline",
                "foreground" => "#F78C6C"
            }
        },
        {
            "name" => "Markup - Strike",
            "scope" => [
                "markup.strike"
            ],
            "settings" => {
                "fontStyle" => "strike"
            }
        },
        {
            "name" => "Markdown - Blockquote",
            "scope" => [
                "markup.quote punctuation.definition.blockquote.markdown"
            ],
            "settings" => {
                "foreground" => "#65737E"
            }
        },
        {
            "name" => "Markup - Quote",
            "scope" => [
                "markup.quote"
            ],
            "settings" => {
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "Markdown - Link",
            "scope" => [
                "string.other.link.title.markdown"
            ],
            "settings" => {
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "Markdown - Link Description",
            "scope" => [
                "string.other.link.description.title.markdown"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "Markdown - Link Anchor",
            "scope" => [
                "constant.other.reference.link.markdown"
            ],
            "settings" => {
                "foreground" => "#FFCB6B"
            }
        },
        {
            "name" => "Markup - Raw Block",
            "scope" => [
                "markup.raw.block"
            ],
            "settings" => {
                "foreground" => "#C792EA"
            }
        },
        {
            "name" => "Markdown - Fenced Bode Block Variable",
            "scope" => [
                "markup.fenced_code.block.markdown",
                "markup.inline.raw.string.markdown"
            ],
            "settings" => {
                "foreground" => "#EEFFFF90"
            }
        },
        {
            "name" => "Markdown - Fenced Language",
            "scope" => [
                "variable.language.fenced.markdown"
            ],
            "settings" => {
                "foreground" => "#65737E"
            }
        },
        {
            "name" => "Markdown - Separator",
            "scope" => [
                "meta.separator"
            ],
            "settings" => {
                "fontStyle" => "bold",
                "foreground" => "#65737E"
            }
        },
        {
            "name" => "Markup - Table",
            "scope" => [
                "markup.table"
            ],
            "settings" => {
                "foreground" => "#EEFFFF"
            }
        },
        {
            "name" => "gray",
            "scope" => [
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
                "meta.paragraph.markdown"
            ],
            "settings" => {
                "foreground" => "#698098"
            }
        },
        {
            "name" => "gray underline",
            "scope" => [
                "source.shell string.interpolated.dollar"
            ],
            "settings" => {
                "foreground" => "#698098",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "pure white",
            "scope" => [],
            "settings" => {
                "foreground" => "#FFFFFF"
            }
        },
        {
            "name" => "off white",
            "scope" => [
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
                "variable.other.readwrite.ts"
            ],
            "settings" => {
                "foreground" => "#c7cbcd"
            }
        },
        {
            "name" => "off white with underline",
            "scope" => [
                "variable.other.object.js",
                "variable.other.readwrite.global"
            ],
            "settings" => {
                "foreground" => "#c7cbcd",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "slate bold",
            "scope" => [],
            "settings" => {
                "foreground" => "#3f848d",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "slate",
            "scope" => [],
            "settings" => {
                "foreground" => "#64bac5"
            }
        },
        {
            "name" => "light blue",
            "scope" => [
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
                "support.type.object.module"
            ],
            "settings" => {
                "foreground" => "#89ddff"
            }
        },
        {
            "name" => "light blue italic",
            "scope" => [
                "keyword.control",
                "keyword.control.conditional",
                "keyword.control.loop"
            ],
            "settings" => {
                "foreground" => "#89ddff",
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "pink",
            "scope" => [
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
                "punctuation.section.block.end.bracket.curly.lambda.cpp"
            ],
            "settings" => {
                "foreground" => "#e57eb3"
            }
        },
        {
            "name" => "pink underline",
            "scope" => [],
            "settings" => {
                "foreground" => "#e57eb3",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "pink bold",
            "scope" => [
                "storage.type.asm",
                "punctuation.section.parens.begin.bracket.round.assembly",
                "punctuation.section.parens.end.bracket.round.assembly"
            ],
            "settings" => {
                "foreground" => "#e57eb3",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "purple",
            "scope" => [
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
                "meta.tag.attributes.js keyword.operator.assignment"
            ],
            "settings" => {
                "foreground" => "#c792eaff"
            }
        },
        {
            "name" => "purple cursive",
            "scope" => [
                "entity.other.attribute-name",
                "entity.other.attribute-name.js.jsx"
            ],
            "settings" => {
                "foreground" => "#c792eaff",
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "purple underline",
            "scope" => [],
            "settings" => {
                "foreground" => "#c792eaff",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "purple bold",
            "scope" => [
                "source.shell punctuation.separator.statement",
                "source.shell keyword.operator.pipe",
                "punctuation.vararg-ellipses"
            ],
            "settings" => {
                "foreground" => "#c792eaff",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "blue",
            "scope" => [
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
                "entity.other.attribute-name.class.pug"
            ],
            "settings" => {
                "foreground" => "#82AAFF"
            }
        },
        {
            "name" => "blue underline",
            "scope" => [
                "variable.other.property.cpp",
                "meta.object-literal.key.js entity.name.function",
                "variable.other.member",
                "entity.name.function.member",
                "support.variable.property.js",
                "support.variable.property.dom.js",
                "meta.method.declaration.js support.function.dom.js",
                "meta.method.declaration.js entity.name.function.js",
                "support.variable.property.dom.js",
                "support.function.dom.js"
            ],
            "settings" => {
                "foreground" => "#82AAFF",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "blue bold",
            "scope" => [
                "punctuation.definition.parameters.begin.lambda",
                "punctuation.definition.parameters.end.lambda"
            ],
            "settings" => {
                "foreground" => "#82AAFF",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "blue italics",
            "scope" => [
                "support.function.builtin"
            ],
            "settings" => {
                "foreground" => "#82AAFF",
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "dim green",
            "scope" => [
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
                "meta.object.member.js"
            ],
            "settings" => {
                "foreground" => "#80CBC4"
            }
        },
        {
            "name" => "dim green with underline",
            "scope" => [
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
                "variable.other.readwrite.global.perl"
            ],
            "settings" => {
                "foreground" => "#80CBC4",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "dim green with italics",
            "scope" => [
                "variable.other.constant.js"
            ],
            "settings" => {
                "foreground" => "#80CBC4",
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "green",
            "scope" => [
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
                "variable.parameter.registers"
            ],
            "settings" => {
                "foreground" => "#4EC9B0"
            }
        },
        {
            "name" => "green bold",
            "scope" => [
                "keyword.other.unit.user-defined.cpp",
                "punctuation.section.parens.begin.bracket.round.assembly.inner",
                "punctuation.section.parens.end.bracket.round.assembly.inner"
            ],
            "settings" => {
                "foreground" => "#4ec9b0d0",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "lime green",
            "scope" => [
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
                "constant.other.color.rgb-value"
            ],
            "settings" => {
                "foreground" => "#C3E88D"
            }
        },
        {
            "name" => "lime green with underline",
            "scope" => [
                "source.python string.quoted.single",
                "source.python string",
                "source.shell string.quoted.single",
                "source.shell string.unquoted.argument",
                "source.shell string.quoted.double"
            ],
            "settings" => {
                "foreground" => "#C3E88D",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "orange",
            "scope" => [
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
                "constant.numeric",
                "constant.numeric.json.comments",
                "constant.numeric.decimal.js",
                "constant.language.null",
                "constant.language.nil",
                "constant.language.undefined",
                "constant.language.symbol"
            ],
            "settings" => {
                "foreground" => "#F78C6C"
            }
        },
        {
            "name" => "orange underline",
            "scope" => [
                "source.shell variable.parameter.positional.shell",
                "source.shell variable.parameter.positional",
                "source.shell variable.parameter.positional.shell punctuation.definition.variable.shell",
                "source.shell variable.parameter.positional punctuation.definition.variable.shell",
                "source.shell punctuation.definition.variable",
                "meta.function.method.with-arguments constant.language.symbol.hashkey.parameter.function",
                "constant.other.character-class.regexp",
                "constant.character.escape"
            ],
            "settings" => {
                "foreground" => "#F78C6C",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "orange bold",
            "scope" => [
                "source.python constant.language"
            ],
            "settings" => {
                "foreground" => "#F78C6C",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "yellow cursive",
            "scope" => [
                "text.haml entity.other.attribute-name.id",
                "support.variable.dom",
                "entity.name.tag.css",
                "support.function.magic.python",
                "support.type.python",
                "support.class.builtin.js",
                "entity.other.attribute-name.html",
                "support.constant.math",
                "storage.modifier.glsl"
            ],
            "settings" => {
                "foreground" => "#fec355",
                "fontStyle" => "italic"
            }
        },
        {
            "name" => "yellow not cursive",
            "scope" => [
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
                "variable.other.constant"
            ],
            "settings" => {
                "foreground" => "#fec355"
            }
        },
        {
            "name" => "yellow underline",
            "scope" => [
                "source.shell variable.other.normal.shell",
                "variable.other.normal.shell punctuation.definition.variable.shell",
                "entity.name.function.constructor.cpp",
                "variable.other.positional.shell",
                "variable.other.positional.shell punctuation.definition.variable.shell",
                "variable.other.special.shell punctuation.definition.variable.shell",
                "variable.other.special.shell"
            ],
            "settings" => {
                "foreground" => "#fec355",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "Bananna yellow",
            "scope" => [
                "keyword.other.unit",
                "punctuation.separator.constant.numeric"
            ],
            "settings" => {
                "foreground" => "#ddd790"
            }
        },
        {
            "name" => "Bananna yellow underline",
            "scope" => [
                "variable.other.readwrite.global.ruby",
                "variable.other.readwrite.global.ruby punctuation.definition.variable.ruby",
                "support.variable",
                "variable.other.readwrite",
                "source.cpp variable.other"
            ],
            "settings" => {
                "foreground" => "#ddd790",
                "fontStyle" => "underline"
            }
        },
        {
            "name" => "red",
            "scope" => [
                "source.ruby meta.function.method.with-arguments punctuation.definition.constant.hashkey",
                "keyword.operator.assignment",
                "variable.language.this",
                "variable.language.self",
                "variable.language.special.self.python",
                "variable.parameter.function.language.special.self.python",
                "variable.other.alias.yaml"
            ],
            "settings" => {
                "foreground" => "#ff5572"
            }
        },
        {
            "name" => "red bold",
            "scope" => [],
            "settings" => {
                "foreground" => "#ff5572",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "red underline",
            "scope" => [
                "source.shell punctuation.definition.variable",
                "source.shell variable.language.special.wildcard",
                "source.shell variable.language.special.shell punctuation.definition.variable.shell",
                "source.shell variable.language.special.shell"
            ],
            "settings" => {
                "foreground" => "#ff5572",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "soft red",
            "scope" => [
                "variable.other.readwrite.class",
                "variable.other.assignment.go",
                "variable.other.normal.shell",
                "variable.other.normal.shell punctuation.definition.variable.shell",
                "punctuation.definition.tag.haml",
                "variable.other.readwrite.instance",
                "meta.function.constructor.initializer-list.cpp meta.function.definition.parameters",
                "source.cpp constant.numeric",
                "punctuation.definition.variable.ruby",
                "constant.language.json.comments",
                "entity.name.tag.structure.any.html",
                "entity.name.tag.html",
                "entity.name.tag.pug",
                "entity.name.tag.inline.any.html",
                "entity.other.attribute-name.id",
                "entity.other.attribute-name.id.css"
            ],
            "settings" => {
                "foreground" => "#E06C75"
            }
        },
        {
            "name" => "soft red",
            "scope" => [
                "source.cpp constant.language"
            ],
            "settings" => {
                "foreground" => "#E06C75",
                "fontStyle" => "bold"
            }
        },
        {
            "name" => "bubble",
            "scope" => [],
            "settings" => {
                "fontStyle" => "bold"
            }
        }
    ],
    "colors" => {
        "menu.selectionBackground"                       => "#00000050",
        "menubar.selectionBackground"                    => "#00000030",
        "listFilterWidget.noMatchesOutline"              => "#00000030",
        "menu.selectionBorder"                           => "#00000030",
        "listFilterWidget.outline"                       => "#00000030",
        "listFilterWidget.background"                    => "#00000030",
        "menubar.selectionBorder"                        => "#00000030",
        "gitDecoration.modifiedResourceForeground"       => "#0c6ce1ca",
        "editor.findMatchHighlightBorder"                => "#11729f",
        "editor.findMatchHighlightBackground"            => "#11729f",
        "tab.activeBackground"                           => "#184967",
        "tab.border"                                     => "#184967",
        "editorGroupHeader.tabsBackground"               => "#184967",
        "tab.inactiveBackground"                         => "#184967",
        "titleBar.activeBackground"                      => "#184967",
        "walkThrough.embeddedEditorBackground"           => "#232635",
        "peekViewEditor.background"                      => "#232635",
        "widget.shadow"                                  => "#232635",
        "editorGroupHeader.tabsBorder"                   => "#242938",
        "editorGroupHeader.noTabsBackground"             => "#242938",
        "statusBarItem.prominentHoverBackground"         => "#242938",
        "statusBarItem.prominentBackground"              => "#242938",
        "sideBar.border"                                 => "#242938",
        "activityBar.border"                             => "#242938",
        "statusBar.border"                               => "#242938",
        "scrollbar.shadow"                               => "#242938",
        "editor.background"                              => "#242938",
        "editorHoverWidget.background"                   => "#242938",
        "tab.unfocusedActiveBorder"                      => "#242938",
        "peekViewTitle.background"                       => "#242938",
        "settings.checkboxBackground"                    => "#242938",
        "statusBarItem.activeBackground"                 => "#242938",
        "settings.textInputBackground"                   => "#242938",
        "settings.numberInputBackground"                 => "#242938",
        "settings.dropdownBackground"                    => "#242938",
        "menu.background"                                => "#242938",
        "statusBar.debuggingBorder"                      => "#242938",
        "breadcrumb.background"                          => "#242938",
        "panel.border"                                   => "#242938",
        "debugToolBar.background"                        => "#242938",
        "editorWidget.background"                        => "#242938",
        "panel.background"                               => "#242938",
        "statusBar.debuggingBackground"                  => "#242938",
        "statusBarItem.hoverBackground"                  => "#242938",
        "debugExceptionWidget.background"                => "#242938",
        "editorMarkerNavigation.background"              => "#242938",
        "statusBar.noFolderBackground"                   => "#242938",
        "statusBar.background"                           => "#242938",
        "activityBar.background"                         => "#242938",
        "sideBar.background"                             => "#242938",
        "sideBarSectionHeader.background"                => "#242938",
        "dropdown.background"                            => "#242938",
        "statusBar.noFolderBorder"                       => "#25293A",
        "editorOverviewRuler.border"                     => "#263238",
        "titleBar.border"                                => "#26323860",
        "sideBarSectionHeader.border"                    => "#26323860",
        "editorBracketMatch.background"                  => "#263238",
        "titleBar.inactiveBackground"                    => "#263238",
        "panelTitle.activeBorder"                        => "#2670a1",
        "editorHoverWidget.border"                       => "#2670a1",
        "activityBar.dropBackground"                     => "#2670a1e3",
        "editorGroup.dropBackground"                     => "#2670a173",
        "merge.incomingHeaderBackground"                 => "#2670a15a",
        "merge.currentHeaderBackground"                  => "#2670a15a",
        "editor.rangeHighlightBackground"                => "#2670a15a",
        "editor.hoverHighlightBackground"                => "#2670a15a",
        "editor.inactiveSelectionBackground"             => "#2670a15a",
        "debugExceptionWidget.border"                    => "#2670a1",
        "editorOverviewRuler.commonContentForeground"    => "#2670a1",
        "editorOverviewRuler.incomingContentForeground"  => "#2670a1",
        "editorOverviewRuler.currentContentForeground"   => "#2670a1",
        "button.hoverBackground"                         => "#2670a1",
        "list.activeSelectionBackground"                 => "#2670a1",
        "dropdown.border"                                => "#2670a1",
        "list.focusBackground"                           => "#2670a1",
        "peekView.border"                                => "#2670a1",
        "badge.background"                               => "#2670a1",
        "editorSuggestWidget.selectedBackground"         => "#2670a1",
        "extensionButton.prominentBackground"            => "#2670a1cc",
        "extensionButton.prominentHoverBackground"       => "#2670a1",
        "button.background"                              => "#2670a1cc",
        "peekViewResult.matchHighlightBackground"        => "#2670a15a",
        "peekViewEditor.matchHighlightBackground"        => "#2670a15a",
        "activityBarBadge.background"                    => "#2670a1",
        "editorWhitespace.foreground"                    => "#2a3f4f",
        "editorIndentGuide.background"                   => "#2a3f4f",
        "editorSuggestWidget.background"                 => "#2c3b4f",
        "notifications.background"                       => "#2c3b4f",
        "editorGroup.border"                             => "#2c3b4f",
        "peekViewResult.background"                      => "#2c3b4f",
        "list.dropBackground"                            => "#2c3b4f",
        "pickerGroup.border"                             => "#2c3b4f",
        "list.hoverBackground"                           => "#2c3b4f",
        "editorSuggestWidget.border"                     => "#2c3b4f",
        "breadcrumbPicker.background"                    => "#2c3b4f",
        "editor.lineHighlightBackground"                 => "#2d3e51",
        "editorGroup.background"                         => "#32374C",
        "scrollbarSlider.hoverBackground"                => "#324962",
        "scrollbarSlider.activeBackground"               => "#324962",
        "scrollbarSlider.background"                     => "#324962",
        "editorRuler.foreground"                         => "#37474F",
        "editorIndentGuide.activeBackground"             => "#37474F",
        "input.border"                                   => "#414863",
        "input.background"                               => "#414863",
        "editorLineNumber.foreground"                    => "#4c5374",
        "statusBar.foreground"                           => "#5e718a",
        "terminal.ansiBlack"                             => "#5e718a",
        "terminal.ansiBrightBlack"                       => "#5e718a",
        "titleBar.inactiveForeground"                    => "#607a86",
        "tab.activeModifiedBorder"                       => "#607a86",
        "sideBar.foreground"                             => "#617396",
        "inputValidation.infoBackground"                 => "#64b5f6f2",
        "inputValidation.infoBorder"                     => "#64B5F6",
        "breadcrumb.foreground"                          => "#69809878",
        "peekViewTitleDescription.foreground"            => "#708aa1",
        "gitDecoration.ignoredResourceForeground"        => "#708aa190",
        "list.inactiveSelectionBackground"               => "#708aa10d",
        "list.inactiveSelectionForeground"               => "#708aa1",
        "textLink.foreground"                            => "#80CBC4",
        "notificationLink.foreground"                    => "#80CBC4",
        "editorWidget.resizeBorder"                      => "#80CBC4",
        "menu.selectionForeground"                       => "#80CBC4",
        "menubar.selectionForeground"                    => "#80CBC4",
        "settings.headerForeground"                      => "#80CBC4",
        "progressBar.background"                         => "#80CBC4",
        "settings.modifiedItemIndicator"                 => "#80CBC4",
        "breadcrumb.activeSelectionForeground"           => "#80CBC4",
        "terminal.ansiBrightBlue"                        => "#82AAFF",
        "terminal.ansiBlue"                              => "#82AAFF",
        "editor.wordHighlightBackground"                 => "#83b2e1b3",
        "selection.background"                           => "#83b2e186",
        "peekViewResult.selectionBackground"             => "#83b2e1b3",
        "editor.selectionHighlightBackground"            => "#83b2e1b3",
        "editor.wordHighlightStrongBackground"           => "#83b2e1b3",
        "editor.selectionBackground"                     => "#83b2e157",
        "terminal.ansiCyan"                              => "#89DDFF",
        "terminal.ansiBrightCyan"                        => "#89DDFF",
        "diffEditor.insertedTextBackground"              => "#99b76d23",
        "editorGutter.addedBackground"                   => "#9CCC65",
        "gitDecoration.untrackedResourceForeground"      => "#a9c77dff",
        "diffEditor.insertedTextBorder"                  => "#a9c77d33",
        "terminal.ansiGreen"                             => "#a9c77d",
        "panelTitle.inactiveForeground"                  => "#bfc9d580",
        "editor.foreground"                              => "#bfc9d5",
        "editorSuggestWidget.foreground"                 => "#bfc9d5",
        "terminal.ansiBrightGreen"                       => "#C3E88D",
        "terminal.ansiMagenta"                           => "#C792EA",
        "terminal.ansiBrightMagenta"                     => "#C792EA",
        "tab.activeBorder"                               => "#C8C8C8",
        "pickerGroup.foreground"                         => "#d1aaff",
        "editorGutter.modifiedBackground"                => "#e2b93d",
        "titleBar.activeForeground"                      => "#eeefff",
        "foreground"                                     => "#eeffff",
        "list.activeSelectionForeground"                 => "#eeffff",
        "menu.foreground"                                => "#EEFFFF",
        "breadcrumb.focusForeground"                     => "#EEFFFF",
        "notifications.foreground"                       => "#eeffffcc",
        "panel.dropBackground"                           => "#EEFFFF",
        "list.focusForeground"                           => "#eeffff",
        "input.foreground"                               => "#eeffffcc",
        "sideBarTitle.foreground"                        => "#eeffff",
        "activityBar.foreground"                         => "#eeffff",
        "tab.unfocusedActiveForeground"                  => "#EEFFFF",
        "textLink.activeForeground"                      => "#EEFFFF",
        "editorLink.activeForeground"                    => "#EEFFFF",
        "panelTitle.activeForeground"                    => "#eeffff",
        "sideBarSectionHeader.foreground"                => "#eeffff",
        "peekViewResult.fileForeground"                  => "#eeffff",
        "peekViewResult.lineForeground"                  => "#eeffff",
        "peekViewResult.selectionForeground"             => "#eeffff",
        "peekViewTitleLabel.foreground"                  => "#eeffff",
        "list.highlightForeground"                       => "#eeffff",
        "button.foreground"                              => "#eeffffcc",
        "dropdown.foreground"                            => "#eeffffcc",
        "inputOption.activeBorder"                       => "#eeffffcc",
        "extensionButton.prominentForeground"            => "#eeffffcc",
        "terminal.ansiBrightWhite"                       => "#eeffff",
        "terminal.ansiWhite"                             => "#eeffff",
        "list.hoverForeground"                           => "#eeffff",
        "tab.activeForeground"                           => "#eeffff",
        "editorSuggestWidget.highlightForeground"        => "#eeffff",
        "badge.foreground"                               => "#eeffff",
        "editorLineNumber.activeForeground"              => "#eeffff",
        "activityBarBadge.foreground"                    => "#eeffff",
        "input.placeholderForeground"                    => "#eeffffcc",
        "peekViewEditorGutter.background"                => "#EEFFFF05",
        "settings.checkboxForeground"                    => "#EEFFFF",
        "settings.textInputForeground"                   => "#EEFFFF",
        "settings.numberInputForeground"                 => "#EEFFFF",
        "settings.dropdownForeground"                    => "#EEFFFF",
        "menu.separatorBackground"                       => "#EEFFFF",
        "editorMarkerNavigationError.background"         => "#EF5350",
        "diffEditor.removedTextBackground"               => "#ef535033",
        "inputValidation.errorBorder"                    => "#EF5350",
        "inputValidation.errorBackground"                => "#ef5350f2",
        "gitDecoration.deletedResourceForeground"        => "#EF535090",
        "diffEditor.removedTextBorder"                   => "#ef53504d",
        "editorError.foreground"                         => "#EF5350",
        "editorGutter.deletedBackground"                 => "#EF5350",
        "terminal.ansiRed"                               => "#ff5572",
        "terminal.ansiBrightRed"                         => "#ff5572",
        "editorCursor.foreground"                        => "#ff9900",
        "editor.findMatchBackground"                     => "#ff9900a1",
        "editor.findMatchBorder"                         => "#ff9900",
        "inputValidation.warningBackground"              => "#ffca28f2",
        "editorWarning.foreground"                       => "#FFCA28",
        "inputValidation.warningBorder"                  => "#FFCA28",
        "editorCodeLens.foreground"                      => "#FFCA28",
        "editorMarkerNavigationWarning.background"       => "#FFCA28",
        "terminal.ansiBrightYellow"                      => "#FFCB6B",
        "terminal.ansiYellow"                            => "#FFCB6B",
        "errorForeground"                                => "#FFCB6B",
        "editorBracketMatch.border"                      => "#FFCC0050",
        "gitDecoration.conflictingResourceForeground"    => "#FFEB95CC",
        "contrastBorder"                                 => "#FFFFFF00",
        "focusBorder"                                    => "#ffffff4e",
        "statusBar.debuggingForeground"                  => "#FFFFFF",
        "tab.inactiveForeground"                         => "#ffffff4e",
    }
}

puts convert_to_ruby(theme)

new_file = File.open("theme.json", "w")
new_file.write(JSON.pretty_generate(theme))
new_file.close

exit
system "git add -A; git commit -m \"commit\"; git push"
system "vsce publish patch"