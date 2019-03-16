require 'json'

theme = {
  "name"                                            => "XD",
  "type"                                            => "dark",
  "tokenColors"                                             => [
    {
      "settings"                                            => {
        "background"                                            => "#263238",
        "foreground"                                            => "#ffffff"
      }
    },
    {
      "name"                                            => "Comment",
      "scope"                                             => [
        "comment",
        "punctuation.definition.comment",
        "string.quoted.docstring"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#546E7A"
      }
    },
    {
      "name"                                            => "Variables",
      "scope"                                             => [
        "variable",
        "string constant.other.placeholder"
      ],
      "settings"                                            => {
        "foreground"                                            => "#EEFFFF"
      }
    },
    {
      "name"                                            => "PHP Constants",
      "scope"                                             => [
        "constant.other.php"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FFCB6B"
      }
    },
    {
      "name"                                            => "Colors",
      "scope"                                             => [
        "constant.other.color"
      ],
      "settings"                                            => {
        "foreground"                                            => "#ffffff"
      }
    },
    {
      "name"                                            => "Invalid",
      "scope"                                             => [
        "invalid",
        "invalid.illegal"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "Invalid deprecated",
      "scope"                                             => [
        "invalid.deprecated"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "Keyword, Storage",
      "scope"                                             => [
        "keyword",
        "storage.type",
        "storage.modifier"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "Keyword, Storage",
      "scope"                                             => [
        "Keyword",
        "Storage"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic"
      }
    },
    {
      "name"                                            => "Operator, Misc",
      "scope"                                             => [
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
      "settings"                                            => {
        "foreground"                                            => "#89DDFF"
      }
    },
    {
      "name"                                            => "Keyword Control",
      "scope"                                             => [
        "keyword.control"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic"
      }
    },
    {
      "name"                                            => "Tag",
      "scope"                                             => [
        "entity.name.tag",
        "meta.tag.sgml",
        "markup.deleted.git_gutter"
      ],
      "settings"                                            => {
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Function, Special Method",
      "scope"                                             => [
        "entity.name.function",
        "meta.function-call",
        "variable.function",
        "support.function",
        "keyword.other.special-method"
      ],
      "settings"                                            => {
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "C-related Block Level Variables",
      "scope"                                             => [
        "source.cpp meta.block variable.other"
      ],
      "settings"                                            => {
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Variables constant",
      "scope"                                             => [
        "variable.other.constant"
      ],
      "settings"                                            => {
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Other Variable, String Link",
      "scope"                                             => [
        "support.other.variable",
        "string.other.link"
      ],
      "settings"                                            => {
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Number, Constant, Function Argument, Tag Attribute, Embedded",
      "scope"                                             => [
        "constant.numeric",
        "constant.language",
        "support.constant",
        "constant.character",
        "constant.escape",
        "keyword.other.unit",
        "keyword.other"
      ],
      "settings"                                            => {
        "foreground"                                            => "#F78C6C"
      }
    },
    {
      "name"                                            => "Number, Constant, Function Argument, Tag Attribute, Embedded",
      "scope"                                             => [
        "variable.parameter.function.language.special",
        "variable.parameter"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "String, Symbols, Inherited Class, Markup Heading",
      "scope"                                             => [
        "string",
        "constant.other.symbol",
        "constant.other.key",
        "entity.other.inherited-class",
        "markup.heading",
        "markup.inserted.git_gutter",
        "meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "normal",
        "foreground"                                            => "#C3E88D"
      }
    },
    {
      "name"                                            => "Class, Support",
      "scope"                                             => [
        "entity.name",
        "support.type",
        "support.class",
        "support.orther.namespace.use.php",
        "meta.use.php",
        "support.other.namespace.php",
        "markup.changed.git_gutter",
        "support.type.sys-types"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FFCB6B"
      }
    },
    {
      "name"                                            => "Entity Types",
      "scope"                                             => [
        "support.type"
      ],
      "settings"                                            => {
        "foreground"                                            => "#B2CCD6"
      }
    },
    {
      "name"                                            => "CSS Class and Support",
      "scope"                                             => [
        "source.css support.type.property-name",
        "source.sass support.type.property-name",
        "source.scss support.type.property-name",
        "source.less support.type.property-name",
        "source.stylus support.type.property-name",
        "source.postcss support.type.property-name"
      ],
      "settings"                                            => {
        "foreground"                                            => "#B2CCD6"
      }
    },
    {
      "name"                                            => "Sub-methods",
      "scope"                                             => [
        "entity.name.module.js",
        "variable.import.parameter.js",
        "variable.other.class.js"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "Language methods",
      "scope"                                             => [
        "variable.language"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "entity.name.method.js",
      "scope"                                             => [
        "entity.name.method.js"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "meta.method.js",
      "scope"                                             => [
        "meta.class-method.js entity.name.function.js",
        "variable.function.constructor"
      ],
      "settings"                                            => {
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "Attributes",
      "scope"                                             => [
        "entity.other.attribute-name"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "CSS Classes",
      "scope"                                             => [
        "entity.other.attribute-name.class"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FFCB6B"
      }
    },
    {
      "name"                                            => "CSS ID's",
      "scope"                                             => [
        "source.sass keyword.control"
      ],
      "settings"                                            => {
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "Inserted",
      "scope"                                             => [
        "markup.inserted"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C3E88D"
      }
    },
    {
      "name"                                            => "Deleted",
      "scope"                                             => [
        "markup.deleted"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "Changed",
      "scope"                                             => [
        "markup.changed"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "Regular Expressions",
      "scope"                                             => [
        "string.regexp"
      ],
      "settings"                                            => {
        "foreground"                                            => "#89DDFF"
      }
    },
    {
      "name"                                            => "Escape Characters",
      "scope"                                             => [
        "constant.character.escape"
      ],
      "settings"                                            => {
        "foreground"                                            => "#89DDFF"
      }
    },
    {
      "name"                                            => "URL",
      "scope"                                             => [
        "*url*",
        "*link*",
        "*uri*"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "underline"
      }
    },
    {
      "name"                                            => "Decorators",
      "scope"                                             => [
        "tag.decorator.js entity.name.tag.js",
        "tag.decorator.js punctuation.definition.tag.js"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "ES7 Bind Operator",
      "scope"                                             => [
        "source.js constant.other.object.key.js string.unquoted.label.js"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "JSON Key - Level 0",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "JSON Key - Level 1",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FFCB6B"
      }
    },
    {
      "name"                                            => "JSON Key - Level 2",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#F78C6C"
      }
    },
    {
      "name"                                            => "JSON Key - Level 3",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FF5370"
      }
    },
    {
      "name"                                            => "JSON Key - Level 4",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C17E70"
      }
    },
    {
      "name"                                            => "JSON Key - Level 5",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "JSON Key - Level 6",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "JSON Key - Level 7",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "JSON Key - Level 8",
      "scope"                                             => [
        "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C3E88D"
      }
    },
    {
      "name"                                            => "Markdown - Plain",
      "scope"                                             => [
        "text.html.markdown",
        "punctuation.definition.list_item.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#EEFFFF"
      }
    },
    {
      "name"                                            => "Markdown - Markup Raw Inline",
      "scope"                                             => [
        "text.html.markdown markup.inline.raw.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "Markdown - Markup Raw Inline Punctuation",
      "scope"                                             => [
        "text.html.markdown markup.inline.raw.markdown punctuation.definition.raw.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#65737E"
      }
    },
    {
      "name"                                            => "Markdown - Line Break",
      "scope"                                             => [
        "text.html.markdown meta.dummy.line-break"
      ],
      "settings"                                            => {
        "foreground"                                            => ""
      }
    },
    {
      "name"                                            => "Markdown - Heading",
      "scope"                                             => [
        "markdown.heading",
        "markup.heading | markup.heading entity.name",
        "markup.heading.markdown punctuation.definition.heading.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C3E88D"
      }
    },
    {
      "name"                                            => "Markup - Italic",
      "scope"                                             => [
        "markup.italic"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Markup - Bold",
      "scope"                                             => [
        "markup.bold",
        "markup.bold string"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "bold",
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Markup - Bold-Italic",
      "scope"                                             => [
        "markup.bold markup.italic",
        "markup.italic markup.bold",
        "markup.quote markup.bold",
        "markup.bold markup.italic string",
        "markup.italic markup.bold string",
        "markup.quote markup.bold string"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "bold",
        "foreground"                                            => "#f07178"
      }
    },
    {
      "name"                                            => "Markup - Underline",
      "scope"                                             => [
        "markup.underline"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "underline",
        "foreground"                                            => "#F78C6C"
      }
    },
    {
      "name"                                            => "Markup - Strike",
      "scope"                                             => [
        "markup.strike"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "strike",
        "foreground"                                            => ""
      }
    },
    {
      "name"                                            => "Markdown - Blockquote",
      "scope"                                             => [
        "markup.quote punctuation.definition.blockquote.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#65737E"
      }
    },
    {
      "name"                                            => "Markup - Quote",
      "scope"                                             => [
        "markup.quote"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "italic",
        "foreground"                                            => ""
      }
    },
    {
      "name"                                            => "Markdown - Link",
      "scope"                                             => [
        "string.other.link.title.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#82AAFF"
      }
    },
    {
      "name"                                            => "Markdown - Link Description",
      "scope"                                             => [
        "string.other.link.description.title.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "Markdown - Link Anchor",
      "scope"                                             => [
        "constant.other.reference.link.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#FFCB6B"
      }
    },
    {
      "name"                                            => "Markup - Raw Block",
      "scope"                                             => [
        "markup.raw.block"
      ],
      "settings"                                            => {
        "foreground"                                            => "#C792EA"
      }
    },
    {
      "name"                                            => "Markdown - Fenced Bode Block Variable",
      "scope"                                             => [
        "markup.fenced_code.block.markdown",
        "markup.inline.raw.string.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#EEFFFF90"
      }
    },
    {
      "name"                                            => "Markdown - Fenced Language",
      "scope"                                             => [
        "variable.language.fenced.markdown"
      ],
      "settings"                                            => {
        "foreground"                                            => "#65737E"
      }
    },
    {
      "name"                                            => "Markdown - Separator",
      "scope"                                             => [
        "meta.separator"
      ],
      "settings"                                            => {
        "fontStyle"                                             => "bold",
        "foreground"                                            => "#65737E"
      }
    },
    {
      "name"                                            => "Markup - Table",
      "scope"                                             => [
        "markup.table"
      ],
      "settings"                                            => {
        "foreground"                                            => "#EEFFFF"
      }
    }
  ],
  "colors"                                            => {
    "focusBorder"                                  => "#FFFFFF00",
    "editorHoverWidget.border"                     => "#FFFFFF10",
    "tab.activeForeground"                         => "#FFFFFF",
    "statusBar.debuggingForeground"                => "#ffffff",
    "list.hoverForeground"                         => "#FFFFFF",
    "terminal.ansiWhite"                           => "#ffffff",
    "terminal.ansiBrightWhite"                     => "#ffffff",
    "panelTitle.activeForeground"                  => "#FFFFFF",
    "editorWhitespace.foreground"                  => "#EEFFFF40",
    "editorLink.activeForeground"                  => "#EEFFFF",
    "selection.background"                         => "#EEFFFF",
    "textLink.activeForeground"                    => "#EEFFFF",
    "editor.foreground"                            => "#EEFFFF",
    "tab.unfocusedActiveForeground"                => "#EEFFFF",
    "activityBar.foreground"                       => "#EEFFFF",
    "titleBar.activeForeground"                    => "#EEFFFF",
    "sideBarTitle.foreground"                      => "#EEFFFF",
    "input.foreground"                             => "#EEFFFF",
    "list.focusForeground"                         => "#EEFFFF",
    "editorSuggestWidget.foreground"               => "#EEFFFF",
    "panel.dropBackground"                         => "#EEFFFF",
    "panelTitle.inactiveForeground"                => "#EEFFFF",
    "notifications.foreground"                     => "#EEFFFF",
    "breadcrumb.focusForeground"                   => "#EEFFFF",
    "menu.foreground"                              => "#EEFFFF",
    "menu.separatorBackground"                     => "#EEFFFF",
    "settings.dropdownForeground"                  => "#EEFFFF",
    "settings.numberInputForeground"               => "#EEFFFF",
    "settings.textInputForeground"                 => "#EEFFFF",
    "settings.checkboxForeground"                  => "#EEFFFF",
    "editorIndentGuide.background"                 => "#37474F70",
    "editorRuler.foreground"                       => "#37474F",
    "editorLineNumber.foreground"                  => "#37474F",
    "editorIndentGuide.activeBackground"           => "#37474F",
    "sideBar.border"                               => "#26323860",
    "titleBar.border"                              => "#26323860",
    "sideBarSectionHeader.border"                  => "#26323860",
    "activityBar.border"                           => "#26323860",
    "statusBar.border"                             => "#26323860",
    "scrollbar.shadow"                             => "#26323800",
    "editorBracketMatch.background"                => "#263238",
    "editor.background"                            => "#263238",
    "editorOverviewRuler.border"                   => "#263238",
    "editorHoverWidget.background"                 => "#263238",
    "editorGroupHeader.tabsBackground"             => "#263238",
    "tab.inactiveBackground"                       => "#263238",
    "tab.border"                                   => "#263238",
    "statusBar.noFolderBackground"                 => "#263238",
    "statusBar.background"                         => "#263238",
    "activityBar.background"                       => "#263238",
    "titleBar.activeBackground"                    => "#263238",
    "titleBar.inactiveBackground"                  => "#263238",
    "sideBar.background"                           => "#263238",
    "sideBarSectionHeader.background"              => "#263238",
    "input.background"                             => "#303C41",
    "dropdown.background"                          => "#263238",
    "list.hoverBackground"                         => "#263238",
    "list.activeSelectionBackground"               => "#263238",
    "editorMarkerNavigation.background"            => "#EEFFFF05",
    "peekViewEditor.background"                    => "#EEFFFF05",
    "peekViewTitle.background"                     => "#EEFFFF05",
    "peekViewResult.background"                    => "#EEFFFF05",
    "peekViewEditorGutter.background"              => "#EEFFFF05",
    "input.border"                                 => "#FFFFFF10",
    "scrollbarSlider.hoverBackground"              => "#EEFFFF10",
    "editorSuggestWidget.border"                   => "#FFFFFF10",
    "dropdown.border"                              => "#FFFFFF10",
    "list.focusBackground"                         => "#EEFFFF20",
    "scrollbarSlider.background"                   => "#EEFFFF20",
    "input.placeholderForeground"                  => "#EEFFFF60",
    "peekViewTitleDescription.foreground"          => "#EEFFFF60",
    "panel.border"                                 => "#26323860",
    "editorSuggestWidget.background"               => "#263238",
    "editorWidget.background"                      => "#263238",
    "panel.background"                             => "#263238",
    "debugToolBar.background"                      => "#263238",
    "breadcrumb.background"                        => "#263238",
    "breadcrumbPicker.background"                  => "#263238",
    "menu.background"                              => "#263238",
    "settings.dropdownBackground"                  => "#263238",
    "settings.numberInputBackground"               => "#263238",
    "settings.textInputBackground"                 => "#263238",
    "settings.checkboxBackground"                  => "#263238",
    "notifications.background"                     => "#263238",
    "list.inactiveSelectionBackground"             => "#00000030",
    "widget.shadow"                                => "#00000030",
    "peekView.border"                              => "#00000030",
    "badge.background"                             => "#00000030",
    "menu.selectionBorder"                         => "#00000030",
    "menubar.selectionBackground"                  => "#00000030",
    "menubar.selectionBorder"                      => "#00000030",
    "listFilterWidget.background"                  => "#00000030",
    "editorGroup.border"                           => "#00000030",
    "listFilterWidget.outline"                     => "#00000030",
    "listFilterWidget.noMatchesOutline"            => "#00000030"
    "menu.selectionBackground"                     => "#00000050",
    "editorSuggestWidget.selectedBackground"       => "#00000050",
    "editor.lineHighlightBackground"               => "#00000050",
    "activityBarBadge.foreground"                  => "#000000",
    "terminal.ansiBlack"                           => "#000000",
    "peekViewResult.selectionBackground"           => "#607a8670",
    "gitDecoration.ignoredResourceForeground"      => "#607a8690",
    "breadcrumb.foreground"                        => "#607a86",
    "editorLineNumber.activeForeground"            => "#607a86",
    "tab.activeModifiedBorder"                     => "#607a86",
    "tab.inactiveForeground"                       => "#607a86",
    "titleBar.inactiveForeground"                  => "#607a86",
    "sideBar.foreground"                           => "#607a86",
    "statusBarItem.hoverBackground"                => "#546E7A20",
    "statusBar.foreground"                         => "#546E7A",
    "tab.unfocusedActiveBorder"                    => "#546E7A",
    "badge.foreground"                             => "#546E7A",
    "terminal.ansiBrightBlack"                     => "#546E7A",
    "editorWidget.border"                          => "",
    "inputValidation.warningBorder"                => "#FFCB6B50",
    "editorBracketMatch.border"                    => "#FFCC0050",
    "editor.selectionHighlightBackground"          => "#FFCC0020",
    "editorCursor.foreground"                      => "#FFCC00",
    "diffEditor.removedTextBackground"             => "#FF537020",
    "inputValidation.errorBorder"                  => "#FF537050",
    "editorGutter.deletedBackground"               => "#FF537060",
    "editorError.foreground"                       => "#FF537070",
    "gitDecoration.deletedResourceForeground"      => "#FF537090",
    "terminal.ansiBrightRed"                       => "#FF5370",
    "terminal.ansiRed"                             => "#FF5370",
    "diffEditor.insertedTextBackground"            => "#C3E88D15",
    "editorGutter.addedBackground"                 => "#C3E88D60",
    "editorWarning.foreground"                     => "#C3E88D70",
    "extensionButton.prominentBackground"          => "#C3E88D90",
    "gitDecoration.untrackedResourceForeground"    => "#C3E88D90",
    "extensionButton.prominentHoverBackground"     => "#C3E88D",
    "terminal.ansiGreen"                           => "#C3E88D",
    "terminal.ansiBrightGreen"                     => "#C3E88D",
    "gitDecoration.conflictingResourceForeground"  => "#FFCB6B90",
    "terminal.ansiYellow"                          => "#FFCB6B",
    "terminal.ansiBrightYellow"                    => "#FFCB6B",
    "button.background"                            => "#80CBC420",
    "peekViewResult.matchHighlightBackground"      => "#80CBC420",
    "peekViewEditor.matchHighlightBackground"      => "#80CBC420",
    "editor.selectionBackground"                   => "#80CBC420",
    "scrollbarSlider.activeBackground"             => "#80CBC4",
    "progressBar.background"                       => "#80CBC4",
    "textLink.foreground"                          => "#80CBC4",
    "tab.activeBorder"                             => "#80CBC4",
    "activityBarBadge.background"                  => "#80CBC4",
    "list.activeSelectionForeground"               => "#80CBC4",
    "list.inactiveSelectionForeground"             => "#80CBC4",
    "list.highlightForeground"                     => "#80CBC4",
    "editorSuggestWidget.highlightForeground"      => "#80CBC4",
    "editorWidget.resizeBorder"                    => "#80CBC4",
    "panelTitle.activeBorder"                      => "#80CBC4",
    "notificationLink.foreground"                  => "#80CBC4",
    "pickerGroup.foreground"                       => "#80CBC4",
    "breadcrumb.activeSelectionForeground"         => "#80CBC4",
    "menu.selectionForeground"                     => "#80CBC4",
    "menubar.selectionForeground"                  => "#80CBC4",
    "settings.headerForeground"                    => "#80CBC4",
    "settings.modifiedItemIndicator"               => "#80CBC4",
    "terminal.ansiCyan"                            => "#89DDFF",
    "terminal.ansiBrightCyan"                      => "#89DDFF",
    "inputValidation.infoBorder"                   => "#82AAFF50",
    "editorGutter.modifiedBackground"              => "#82AAFF60",
    "gitDecoration.modifiedResourceForeground"     => "#82AAFF90",
    "terminal.ansiBlue"                            => "#82AAFF",
    "terminal.ansiBrightBlue"                      => "#82AAFF",
    "terminal.ansiMagenta"                         => "#C792EA",
    "terminal.ansiBrightMagenta"                   => "#C792EA",
    "statusBar.debuggingBackground"                => "#C792EA",
  }
}

new_file = File.open("theme.json", "w")
new_file.write(theme.to_json)
new_file.close
