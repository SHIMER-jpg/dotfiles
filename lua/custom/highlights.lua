local c = {
  vscNone = 'NONE',
  vscFront = '#D4D4D4',
  vscBack = '#1E1E1E',
  vscTabCurrent = '#1E1E1E',
  vscTabOther = '#2D2D2D',
  vscTabOutside = '#252526',
  vscLeftDark = '#252526',
  vscLeftMid = '#373737',
  vscLeftLight = '#636369',
  vscPopupFront = '#BBBBBB',
  vscPopupBack = '#272727',
  vscPopupHighlightBlue = '#004b72',
  vscPopupHighlightGray = '#343B41',
  vscSplitLight = '#898989',
  vscSplitDark = '#444444',
  vscSplitThumb = '#424242',
  vscCursorDarkDark = '#222222',
  vscCursorDark = '#51504F',
  vscCursorLight = '#AEAFAD',
  vscSelection = '#264F78',
  vscLineNumber = '#5A5A5A',
  vscDiffRedDark = '#4B1818',
  vscDiffRedLight = '#6F1313',
  vscDiffRedLightLight = '#FB0101',
  vscDiffGreenDark = '#373D29',
  vscDiffGreenLight = '#4B5632',
  vscSearchCurrent = '#515c6a',
  vscSearch = '#613315',
  vscGitAdded = '#81b88b',
  vscGitModified = '#e2c08d',
  vscGitDeleted = '#c74e39',
  vscGitRenamed = '#73c991',
  vscGitUntracked = '#73c991',
  vscGitIgnored = '#8c8c8c',
  vscGitStageModified = '#e2c08d',
  vscGitStageDeleted = '#c74e39',
  vscGitConflicting = '#e4676b',
  vscGitSubmodule = '#8db9e2',
  vscContext = '#404040',
  vscContextCurrent = '#707070',
  vscFoldBackground = '#202d39',
  -- Syntax colors
  vscGray = '#808080',
  vscViolet = '#646695',
  vscBlue = '#569CD6',
  vscDarkBlue = '#223E55',
  vscMediumBlue = '#18a2fe',
  vscLightBlue = '#9CDCFE',
  vscGreen = '#6A9955',
  vscBlueGreen = '#4EC9B0',
  vscLightGreen = '#B5CEA8',
  vscRed = '#F44747',
  vscOrange = '#CE9178',
  vscLightRed = '#D16969',
  vscYellowOrange = '#D7BA7D',
  vscYellow = '#DCDCAA',
  vscPink = '#C586C0',
}

vim.o.background = 'dark'
local isDark = vim.o.background == 'dark'

-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  ['Normal'] = { fg = c.vscFront, bg = c.vscBack },
  ['ColorColumn'] = { fg = 'NONE', bg = c.vscCursorDarkDark },
  ['Cursor'] = { fg = c.vscCursorDark, bg = c.vscCursorLight },
  ['CursorLine'] = { bg = c.vscCursorDarkDark },
  ['CursorColumn'] = { fg = 'NONE', bg = c.vscCursorDarkDark },
  ['Directory'] = { fg = c.vscBlue, bg = c.vscBack },
  ['DiffAdd'] = { fg = 'NONE', bg = c.vscDiffGreenLight },
  ['DiffChange'] = { fg = 'NONE', bg = c.vscDiffRedDark },
  ['DiffDelete'] = { fg = 'NONE', bg = c.vscDiffRedLight },
  ['DiffText'] = { fg = 'NONE', bg = c.vscDiffRedLight },
  ['EndOfBuffer'] = { fg = c.vscBack, bg = 'NONE' },
  ['ErrorMsg'] = { fg = c.vscRed, bg = c.vscBack },
  ['VertSplit'] = { fg = c.vscSplitDark, bg = c.vscBack },
  ['Folded'] = { fg = 'NONE', bg = c.vscFoldBackground },
  ['FoldColumn'] = { fg = c.vscLineNumber, bg = c.vscBack },
  ['SignColumn'] = { fg = 'NONE', bg = c.vscBack },
  ['IncSearch'] = { fg = c.vscNone, bg = c.vscSearchCurrent },
  ['LineNr'] = { fg = c.vscLineNumber, bg = c.vscBack },
  ['CursorLineNr'] = { fg = c.vscPopupFront, bg = c.vscBack },
  ['MatchParen'] = { fg = c.vscNone, bg = c.vscCursorDark },
  ['ModeMsg'] = { fg = c.vscFront, bg = c.vscLeftDark },
  ['MoreMsg'] = { fg = c.vscFront, bg = c.vscLeftDark },
  ['NonText'] = { fg = (isDark and c.vscLineNumber or c.vscTabOther), bg = c.vscNone },
  ['Pmenu'] = { fg = c.vscPopupFront, bg = c.vscPopupBack },
  ['PmenuSel'] = { fg = isDark and c.vscPopupFront or c.vscBack, bg = c.vscPopupHighlightBlue },
  ['PmenuSbar'] = { fg = 'NONE', bg = c.vscPopupHighlightGray },
  ['PmenuThumb'] = { fg = 'NONE', bg = c.vscPopupFront },
  ['Question'] = { fg = c.vscBlue, bg = c.vscBack },
  ['Search'] = { fg = c.vscNone, bg = c.vscSearch },
  ['SpecialKey'] = { fg = c.vscBlue, bg = c.vscNone },
  ['StatusLine'] = { fg = c.vscFront, bg = c.vscLeftMid },
  ['StatusLineNC'] = { fg = c.vscFront, bg = c.vscLeftDark },
  ['TabLine'] = { fg = c.vscFront, bg = c.vscTabOther },
  ['TabLineFill'] = { fg = c.vscFront, bg = c.vscTabOutside },
  ['TabLineSel'] = { fg = c.vscFront, bg = c.vscTabCurrent },
  ['Title'] = { fg = c.vscNone, bg = c.vscNone, bold = true },
  ['Visual'] = { fg = c.vscNone, bg = c.vscSelection },
  ['VisualNOS'] = { fg = c.vscNone, bg = c.vscSelection },
  ['WarningMsg'] = { fg = c.vscRed, bg = c.vscBack, bold = true },
  ['WildMenu'] = { fg = c.vscNone, bg = c.vscSelection },  
  ['Comment'] = { fg = c.vscGreen, bg = 'NONE', italic = true },
  ['Constant'] = { fg = c.vscBlue, bg = 'NONE' },
  ['String'] = { fg = c.vscOrange, bg = 'NONE' },
  ['Character'] = { fg = c.vscOrange, bg = 'NONE' },
  ['Number'] = { fg = c.vscLightGreen, bg = 'NONE' },
  ['Boolean'] = { fg = c.vscBlue, bg = 'NONE' },
  ['Float'] = { fg = c.vscLightGreen, bg = 'NONE' },
  ['Identifier'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['Function'] = { fg = c.vscYellow, bg = 'NONE' },
  ['Statement'] = { fg = c.vscPink, bg = 'NONE' },
  ['Conditional'] = { fg = c.vscPink, bg = 'NONE' },
  ['Repeat'] = { fg = c.vscPink, bg = 'NONE' },
  ['Label'] = { fg = c.vscPink, bg = 'NONE' },
  ['Operator'] = { fg = c.vscFront, bg = 'NONE' },
  ['Keyword'] = { fg = c.vscPink, bg = 'NONE' },
  ['Exception'] = { fg = c.vscPink, bg = 'NONE' },
  ['PreProc'] = { fg = c.vscPink, bg = 'NONE' },
  ['Include'] = { fg = c.vscPink, bg = 'NONE' },
  ['Define'] = { fg = c.vscPink, bg = 'NONE' },
  ['Macro'] = { fg = c.vscPink, bg = 'NONE' },
  ['Type'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['StorageClass'] = { fg = c.vscBlue, bg = 'NONE' },
  ['Structure'] = { fg = c.vscBlue, bg = 'NONE' },
  ['Typedef'] = { fg = c.vscBlue, bg = 'NONE' },
  ['Special'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['SpecialChar'] = { fg = c.vscFront, bg = 'NONE' },
  ['Tag'] = { fg = c.vscFront, bg = 'NONE' },
  ['Delimiter'] = { fg = c.vscFront, bg = 'NONE' },
  ['SpecialComment'] = { fg = c.vscGreen, bg = 'NONE' },
  ['Debug'] = { fg = c.vscFront, bg = 'NONE' },
  ['Underlined'] = { fg = c.vscNone, bg = 'NONE', underline = true },
  ['Conceal'] = { fg = c.vscFront, bg = c.vscBack },
  ['Ignore'] = { fg = c.vscFront, bg = 'NONE' },
  ['Error'] = { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
  ['Todo'] = { fg = c.vscYellowOrange, bg = c.vscBack, bold = true },
  ['SpellBad'] = { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
  ['SpellCap'] = { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
  ['SpellRare'] = { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
  ['SpellLocal'] = { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
  ['Whitespace'] = { fg = isDark and c.vscLineNumber or c.vscTabOther },
  -- Treesitter
  ['@error'] = { fg = c.vscRed, bg = 'NONE' },
  ['@punctuation.bracket'] = { fg = c.vscFront, bg = 'NONE' },
  ['@punctuation.special'] = { fg = c.vscFront, bg = 'NONE' },
  ['@comment'] = { fg = c.vscGreen, bg = 'NONE', italic = true },
  ['@constant'] = { fg = c.vscYellow, bg = 'NONE' },
  ['@constant.builtin'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@constant.macro'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@string.regex'] = { fg = c.vscOrange, bg = 'NONE' },
  ['@string'] = { fg = c.vscOrange, bg = 'NONE' },
  ['@character'] = { fg = c.vscOrange, bg = 'NONE' },
  ['@number'] = { fg = c.vscLightGreen, bg = 'NONE' },
  ['@boolean'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@float'] = { fg = c.vscLightGreen, bg = 'NONE' },
  ['@annotation'] = { fg = c.vscYellow, bg = 'NONE' },
  ['@attribute'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@namespace'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@function.builtin'] = { fg = c.vscYellow, bg = 'NONE' },
  ['@function'] = { fg = c.vscYellow, bg = 'NONE' },
  ['@function.macro'] = { fg = c.vscYellow, bg = 'NONE' },
  ['@parameter'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@parameter.reference'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@method'] = { fg = c.vscYellow, bg = 'NONE' },
  ['@field'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@property'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@constructor'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@conditional'] = { fg = c.vscPink, bg = 'NONE' },
  ['@repeat'] = { fg = c.vscPink, bg = 'NONE' },
  ['@label'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@keyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@keyword.alias'] = { fg = c.vscPink, bg = 'NONE' },
  ['@keyword.function'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@keyword.operator'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@operator'] = { fg = c.vscFront, bg = 'NONE' },
  ['@exception'] = { fg = c.vscPink, bg = 'NONE' },
  ['@type'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@type.builtin'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@type.qualifier'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@storageClass'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@structure'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@include'] = { fg = c.vscPink, bg = 'NONE' },
  ['@variable'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@variable.builtin'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@text'] = { fg = c.vscFront, bg = 'NONE' },
  ['@text.underline'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['@tag'] = { fg = c.vscBlue, bg = 'NONE' },
  ['@tag.delimiter'] = { fg = c.vscGray, bg = 'NONE' },
  ['@tag.attribute'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['@text.title'] = { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true },
  ['@text.literal'] = { fg = c.vscFront, bg = 'NONE' },
  ['@text.literal.markdown'] = { fg = c.vscOrange, bg = 'NONE' },
  ['@text.literal.markdown_inline'] = { fg = c.vscOrange, bg = 'NONE' },
  ['@text.emphasis'] = { fg = c.vscFront, bg = 'NONE', italic = true },
  ['@text.strong'] = { fg = isDark and c.vscBlue or c.vscViolet, bold = true },
  ['@text.uri'] = { fg = c.vscFront, bg = 'NONE' },
  ['@textReference'] = { fg = isDark and c.vscOrange or c.vscYellowOrange },
  ['@punctuation.delimiter'] = { fg = c.vscFront, bg = 'NONE' },
  ['@stringEscape'] = { fg = isDark and c.vscOrange or c.vscYellowOrange, bold = true },
  ['@text.note'] = { fg = c.vscBlueGreen, bg = 'NONE', bold = true },
  ['@text.warning'] = { fg = c.vscYellowOrange, bg = 'NONE', bold = true },
  ['@text.danger'] = { fg = c.vscRed, bg = 'NONE', bold = true },
  -- LSP semantic tokens
  ['@class'] = { link = '@type' },
  ['@struct'] = { link = '@type' },
  ['@enum'] = { link = '@type' },
  ['@enumMember'] = { link = '@constant' },
  ['@event'] = { link = 'Identifier' },
  ['@interface'] = { link = 'Identifier' },
  ['@modifier'] = { link = 'Identifier' },
  ['@regexp'] = { fg = c.vscRed, bg = 'NONE' },
  ['@typeParameter'] = { link = '@type' },
  ['@decorator'] = { link = 'Identifier' },
  -- Markdown
  ['markdownBold'] = { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true },
  ['markdownCode'] = { fg = c.vscOrange, bg = 'NONE' },
  ['markdownRule'] = { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true },
  ['markdownCodeDelimiter'] = { fg = c.vscFront, bg = 'NONE' },
  ['markdownHeadingDelimiter'] = { fg = isDark and c.vscBlue or c.vscYellowOrange, bg = 'NONE' },
  ['markdownFootnote'] = { fg = isDark and c.vscOrange or c.vscYellowOrange, bg = 'NONE' },
  ['markdownFootnoteDefinition'] = { fg = isDark and c.vscOrange or c.vscYellowOrange },
  ['markdownUrl'] = { fg = c.vscFront, bg = 'NONE', underline = true },
  ['markdownLinkText'] = { fg = isDark and c.vscOrange or c.vscYellowOrange },
  ['markdownEscape'] = { fg = isDark and c.vscOrange or c.vscYellowOrange },
  -- JSON
  ['jsonKeyword'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsonEscape'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['jsonNull'] = { fg = c.vscBlue, bg = 'NONE' },
  ['jsonBoolean'] = { fg = c.vscBlue, bg = 'NONE' },
  -- HTML
  ['htmlTag'] = { fg = c.vscGray, bg = 'NONE' },
  ['htmlEndTag'] = { fg = c.vscGray, bg = 'NONE' },
  ['htmlTagName'] = { fg = c.vscBlue, bg = 'NONE' },
  ['htmlSpecialTagName'] = { fg = c.vscBlue, bg = 'NONE' },
  ['htmlArg'] = { fg = c.vscLightBlue, bg = 'NONE' },
  -- PHP
  ['phpStaticClasses'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['phpMethod'] = { fg = c.vscYellow, bg = 'NONE' },
  ['phpClass'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['phpFunction'] = { fg = c.vscYellow, bg = 'NONE' },
  ['phpInclude'] = { fg = c.vscBlue, bg = 'NONE' },
  ['phpUseClass'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['phpRegion'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['phpMethodsVar'] = { fg = c.vscLightBlue, bg = 'NONE' },
  -- CSS
  ['cssBraces'] = { fg = c.vscFront, bg = 'NONE' },
  ['cssInclude'] = { fg = c.vscPink, bg = 'NONE' },
  ['cssTagName'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['cssClassName'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['cssPseudoClass'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['cssPseudoClassId'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['cssPseudoClassLang'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['cssIdentifier'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['cssProp'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['cssDefinition'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['cssAttr'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssAttrRegion'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssColor'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssFunction'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssFunctionName'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssVendor'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssValueNumber'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssValueLength'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssUnitDecorators'] = { fg = c.vscOrange, bg = 'NONE' },
  ['cssStyle'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['cssImportant'] = { fg = c.vscBlue, bg = 'NONE' },
  -- JavaScript
  ['jsVariableDef'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsFuncArgs'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsFuncBlock'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsRegexpString'] = { fg = c.vscLightRed, bg = 'NONE' },
  ['jsThis'] = { fg = c.vscBlue, bg = 'NONE' },
  ['jsOperatorKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['jsDestructuringBlock'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsObjectKey'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsGlobalObjects'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['jsModuleKeyword'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsClassDefinition'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['jsClassKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['jsExtendsKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['jsExportDefault'] = { fg = c.vscPink, bg = 'NONE' },
  ['jsFuncCall'] = { fg = c.vscYellow, bg = 'NONE' },
  ['jsObjectValue'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsParen'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsObjectProp'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsIfElseBlock'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsParenIfElse'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsSpreadOperator'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['jsSpreadExpression'] = { fg = c.vscLightBlue, bg = 'NONE' },
  -- Typescript
  ['typescriptLabel'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptExceptions'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptBraces'] = { fg = c.vscFront, bg = 'NONE' },
  ['typescriptEndColons'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptParens'] = { fg = c.vscFront, bg = 'NONE' },
  ['typescriptDocTags'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptDocComment'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptLogicSymbols'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptImport'] = { fg = c.vscPink, bg = 'NONE' },
  ['typescriptBOM'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptVariableDeclaration'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptVariable'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptExport'] = { fg = c.vscPink, bg = 'NONE' },
  ['typescriptAliasDeclaration'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptAliasKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptClassName'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptAccessibilityModifier'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptOperator'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptArrowFunc'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptMethodAccessor'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptMember'] = { fg = c.vscYellow, bg = 'NONE' },
  ['typescriptTypeReference'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptTemplateSB'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['typescriptArrowFuncArg'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptParamImpl'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptFuncComma'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptCastKeyword'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptCall'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptCase'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptReserved'] = { fg = c.vscPink, bg = 'NONE' },
  ['typescriptDefault'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptDecorator'] = { fg = c.vscYellow, bg = 'NONE' },
  ['typescriptPredefinedType'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptClassHeritage'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptClassExtends'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptClassKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptBlock'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptDOMDocProp'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptTemplateSubstitution'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptClassBlock'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptFuncCallArg'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptIndexExpr'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptConditionalParen'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptArray'] = { fg = c.vscYellow, bg = 'NONE' },
  ['typescriptES6SetProp'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptObjectLiteral'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptTypeParameter'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptEnumKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptEnum'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptLoopParen'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptParenExp'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptModule'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['typescriptAmbientDeclaration'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptFuncTypeArrow'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptInterfaceHeritage'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptInterfaceName'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptInterfaceKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptInterfaceExtends'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptGlobal'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['typescriptAsyncFuncKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptFuncKeyword'] = { fg = c.vscBlue, bg = 'NONE' },
  ['typescriptGlobalMethod'] = { fg = c.vscYellow, bg = 'NONE' },
  ['typescriptPromiseMethod'] = { fg = c.vscYellow, bg = 'NONE' },
  -- XML
  ['xmlTag'] = { fg = c.vscBlue, bg = 'NONE' },
  ['xmlTagName'] = { fg = c.vscBlue, bg = 'NONE' },
  ['xmlEndTag'] = { fg = c.vscBlue, bg = 'NONE' },
  -- Ruby
  ['rubyClassNameTag'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['rubyClassName'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['rubyModuleName'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['rubyConstant'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  -- Golang
  ['goPackage'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goImport'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goVar'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goConst'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goStatement'] = { fg = c.vscPink, bg = 'NONE' },
  ['goType'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['goSignedInts'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['goUnsignedInts'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['goFloats'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['goComplexes'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['goBuiltins'] = { fg = c.vscYellow, bg = 'NONE' },
  ['goBoolean'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goPredefinedIdentifiers'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goTodo'] = { fg = c.vscGreen, bg = 'NONE' },
  ['goDeclaration'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goDeclType'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goTypeDecl'] = { fg = c.vscBlue, bg = 'NONE' },
  ['goTypeName'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['goVarAssign'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['goVarDefs'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['goReceiver'] = { fg = c.vscFront, bg = 'NONE' },
  ['goReceiverType'] = { fg = c.vscFront, bg = 'NONE' },
  ['goFunctionCall'] = { fg = c.vscYellow, bg = 'NONE' },
  ['goMethodCall'] = { fg = c.vscYellow, bg = 'NONE' },
  ['goSingleDecl'] = { fg = c.vscLightBlue, bg = 'NONE' },
  -- Python
  ['pythonStatement'] = { fg = c.vscBlue, bg = 'NONE' },
  ['pythonOperator'] = { fg = c.vscBlue, bg = 'NONE' },
  ['pythonException'] = { fg = c.vscPink, bg = 'NONE' },
  ['pythonExClass'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['pythonBuiltinObj'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['pythonBuiltinType'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  ['pythonBoolean'] = { fg = c.vscBlue, bg = 'NONE' },
  ['pythonNone'] = { fg = c.vscBlue, bg = 'NONE' },
  ['pythonTodo'] = { fg = c.vscBlue, bg = 'NONE' },
  ['pythonClassVar'] = { fg = c.vscBlue, bg = 'NONE' },
  ['pythonClassDef'] = { fg = c.vscBlueGreen, bg = 'NONE' },
  -- TeX
  ['texStatement'] = { fg = c.vscBlue, bg = 'NONE' },
  ['texBeginEnd'] = { fg = c.vscYellow, bg = 'NONE' },
  ['texBeginEndName'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['texOption'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['texBeginEndModifier'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['texDocType'] = { fg = c.vscPink, bg = 'NONE' },
  ['texDocTypeArgs'] = { fg = c.vscLightBlue, bg = 'NONE' },
  -- Git
  ['gitcommitHeader'] = { fg = c.vscGray, bg = 'NONE' },
  ['gitcommitOnBranch'] = { fg = c.vscGray, bg = 'NONE' },
  ['gitcommitBranch'] = { fg = c.vscPink, bg = 'NONE' },
  ['gitcommitComment'] = { fg = c.vscGray, bg = 'NONE' },
  ['gitcommitSelectedType'] = { fg = c.vscGreen, bg = 'NONE' },
  ['gitcommitSelectedFile'] = { fg = c.vscGreen, bg = 'NONE' },
  ['gitcommitDiscardedType'] = { fg = c.vscRed, bg = 'NONE' },
  ['gitcommitDiscardedFile'] = { fg = c.vscRed, bg = 'NONE' },
  ['gitcommitOverflow'] = { fg = c.vscRed, bg = 'NONE' },
  ['gitcommitSummary'] = { fg = c.vscPink, bg = 'NONE' },
  ['gitcommitBlank'] = { fg = c.vscPink, bg = 'NONE' },
  -- Lua
  ['luaFuncCall'] = { fg = c.vscYellow, bg = 'NONE' },
  ['luaFuncArgName'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['luaFuncKeyword'] = { fg = c.vscPink, bg = 'NONE' },
  ['luaLocal'] = { fg = c.vscPink, bg = 'NONE' },
  ['luaBuiltIn'] = { fg = c.vscBlue, bg = 'NONE' },
  -- SH
  ['shDeref'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['shVariable'] = { fg = c.vscLightBlue, bg = 'NONE' },
  -- SQL
  ['sqlKeyword'] = { fg = c.vscPink, bg = 'NONE' },
  ['sqlFunction'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['sqlOperator'] = { fg = c.vscPink, bg = 'NONE' },
  -- YAML
  ['yamlKey'] = { fg = c.vscBlue, bg = 'NONE' },
  ['yamlConstant'] = { fg = c.vscBlue, bg = 'NONE' },
  -- Gitgutter
  ['GitGutterAdd'] = { fg = c.vscGreen, bg = 'NONE' },
  ['GitGutterChange'] = { fg = c.vscYellow, bg = 'NONE' },
  ['GitGutterDelete'] = { fg = c.vscRed, bg = 'NONE' },
  -- Git Signs
  ['GitSignsAdd'] = { fg = c.vscGreen, bg = 'NONE' },
  ['GitSignsChange'] = { fg = c.vscYellow, bg = 'NONE' },
  ['GitSignsDelete'] = { fg = c.vscRed, bg = 'NONE' },
  ['GitSignsAddLn'] = { fg = c.vscBack, bg = c.vscGreen },
  ['GitSignsChangeLn'] = { fg = c.vscBack, bg = c.vscYellow },
  ['GitSignsDeleteLn'] = { fg = c.vscBack, bg = c.vscRed },
  -- -- NvimTree
  ['NvimTreeRootFolder'] = { fg = c.vscFront, bg = 'NONE', bold = true },
  ['NvimTreeGitDirty'] = { fg = c.vscYellow, bg = 'NONE' },
  ['NvimTreeGitNew'] = { fg = c.vscGreen, bg = 'NONE' },
  ['NvimTreeImageFile'] = { fg = c.vscViolet, bg = 'NONE' },
  ['NvimTreeEmptyFolderName'] = { fg = c.vscGray, bg = 'NONE' },
  ['NvimTreeFolderName'] = { fg = c.vscFront, bg = 'NONE' },
  ['NvimTreeSpecialFile'] = { fg = c.vscPink, bg = 'NONE', underline = true },
  --  ['NvimTreeNormal']={ fg = c.vscFront, bg = opts.disable_nvimtree_bg and c.vscBack or c.vscLeftDark },
  --  ['NvimTreeCursorLine']={ fg = 'NONE', bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftMid },
  --  ['NvimTreeVertSplit']={ fg = opts.disable_nvimtree_bg and c.vscSplitDark or c.vscBack, bg = c.vscBack },
  --  ['NvimTreeEndOfBuffer']={ fg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark },
  -- hl(
  --   0,
  --   'NvimTreeOpenedFolderName',
  --   { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark }
  -- )
  ['NvimTreeGitRenamed'] = { fg = c.vscGitRenamed, bg = 'NONE' },
  ['NvimTreeGitIgnored'] = { fg = c.vscGitIgnored, bg = 'NONE' },
  ['NvimTreeGitDeleted'] = { fg = c.vscGitDeleted, bg = 'NONE' },
  ['NvimTreeGitStaged'] = { fg = c.vscGitStageModified, bg = 'NONE' },
  ['NvimTreeGitMerge'] = { fg = c.vscGitUntracked, bg = 'NONE' },
  ['NvimTreeGitDirty'] = { fg = c.vscGitModified, bg = 'NONE' },
  ['NvimTreeGitNew'] = { fg = c.vscGitAdded, bg = 'NONE' },
  -- Bufferline
  ['BufferLineIndicatorSelected'] = { fg = c.vscLeftDark, bg = 'NONE' },
  ['BufferLineFill'] = { fg = 'NONE', bg = c.vscLeftDark },
  -- BarBar
  ['BufferCurrent'] = { fg = c.vscFront, bg = c.vscTabCurrent },
  ['BufferCurrentIndex'] = { fg = c.vscFront, bg = c.vscTabCurrent },
  ['BufferCurrentMod'] = { fg = c.vscYellowOrange, bg = c.vscTabCurrent },
  ['BufferCurrentSign'] = { fg = c.vscFront, bg = c.vscTabCurrent },
  ['BufferCurrentTarget'] = { fg = c.vscRed, bg = c.vscTabCurrent },
  ['BufferVisible'] = { fg = c.vscGray, bg = c.vscTabCurrent },
  ['BufferVisibleIndex'] = { fg = c.vscGray, bg = c.vscTabCurrent },
  ['BufferVisibleMod'] = { fg = c.vscYellowOrange, bg = c.vscTabCurrent },
  ['BufferVisibleSign'] = { fg = c.vscGray, bg = c.vscTabCurrent },
  ['BufferVisibleTarget'] = { fg = c.vscRed, bg = c.vscTabCurrent },
  ['BufferInactive'] = { fg = c.vscGray, bg = c.vscTabOther },
  ['BufferInactiveIndex'] = { fg = c.vscGray, bg = c.vscTabOther },
  ['BufferInactiveMod'] = { fg = c.vscYellowOrange, bg = c.vscTabOther },
  ['BufferInactiveSign'] = { fg = c.vscGray, bg = c.vscTabOther },
  ['BufferInactiveTarget'] = { fg = c.vscRed, bg = c.vscTabOther },
  ['BufferTabpages'] = { fg = c.vscFront, bg = c.vscTabOther },
  ['BufferTabpagesFill'] = { fg = c.vscFront, bg = c.vscTabOther },
  -- IndentBlankLine
  ['IndentBlanklineContextChar'] = { fg = c.vscContextCurrent, bg = 'NONE', nocombine = true },
  ['IndentBlanklineContextStart'] = { sp = c.vscContextCurrent, bg = 'NONE', nocombine = true },
  --underline = true  can be used above to underline the indent
  ['IndentBlanklineChar'] = { fg = c.vscContext, bg = 'NONE', nocombine = true },
  ['IndentBlanklineSpaceChar'] = { fg = c.vscContext, bg = 'NONE', nocombine = true },
  ['IndentBlanklineSpaceCharBlankline'] = { fg = c.vscContext, bg = 'NONE', nocombine = true },
  -- LSP
  ['DiagnosticError'] = { fg = c.vscRed, bg = 'NONE' },
  ['DiagnosticWarn'] = { fg = c.vscYellow, bg = 'NONE' },
  ['DiagnosticInfo'] = { fg = c.vscPink, bg = 'NONE' },
  ['DiagnosticHint'] = { fg = c.vscPink, bg = 'NONE' },
  ['DiagnosticUnderlineError'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscRed },
  ['DiagnosticUnderlineWarn'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscYellow },
  ['DiagnosticUnderlineInfo'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscBlue },
  ['DiagnosticUnderlineHint'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscBlue },
  ['LspReferenceText'] = { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue },
  ['LspReferenceRead'] = { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue },
  ['LspReferenceWrite'] = { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue },
  -- COC.nvim
  ['CocHighlightText'] = { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue },
  ['CocHighlightRead'] = { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue },
  ['CocHighlightWrite'] = { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue },
  -- Nvim compe
  ['CmpItemKindVariable'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['CmpItemKindInterface'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['CmpItemKindText'] = { fg = c.vscLightBlue, bg = 'NONE' },
  ['CmpItemKindFunction'] = { fg = c.vscPink, bg = 'NONE' },
  ['CmpItemKindMethod'] = { fg = c.vscPink, bg = 'NONE' },
  ['CmpItemKindKeyword'] = { fg = c.vscFront, bg = 'NONE' },
  ['CmpItemKindProperty'] = { fg = c.vscFront, bg = 'NONE' },
  ['CmpItemKindUnit'] = { fg = c.vscFront, bg = 'NONE' },
  ['CmpItemKindConstructor'] = { fg = c.vscUiOrange, bg = 'NONE' },
  ['CmpItemMenu'] = { fg = c.vscPopupFront, bg = 'NONE' },
  ['CmpItemAbbr'] = { fg = c.vscFront, bg = 'NONE' },
  ['CmpItemAbbrDeprecated'] = { fg = c.vscCursorDark, bg = c.vscPopupBack, strikethrough = true },
  ['CmpItemAbbrMatch'] = { fg = isDark and c.vscMediumBlue or c.vscDarkBlue, bg = 'NONE', bold = true },
  ['CmpItemAbbrMatchFuzzy'] = { fg = isDark and c.vscMediumBlue or c.vscDarkBlue, bg = 'NONE', bold = true },
  -- Dashboard
  ['DashboardHeader'] = { fg = c.vscBlue, bg = 'NONE' },
  ['DashboardDesc'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['DashboardIcon'] = { fg = c.vscYellowOrange, bg = 'NONE' },
  ['DashboardShortCut'] = { fg = c.vscPink, bg = 'NONE' },
  ['DashboardKey'] = { fg = c.vscWhite, bg = 'NONE' },
  ['DashboardFooter'] = { fg = c.vscBlue, bg = 'NONE', italic = true },
  ['NvimTreeFolderIcon'] = { fg = c.vscBlue, bg = 'NONE' },
  ['NvimTreeIndentMarker'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspFloatWinNormal'] = { fg = c.vscFront, bg = 'NONE' },
  ['LspFloatWinBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaHoverBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaSignatureHelpBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaCodeActionBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaDefPreviewBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspLinesDiagBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaRenameBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaBorderTitle'] = { fg = c.vscCursorDark, bg = 'NONE' },
  ['LSPSagaDiagnosticTruncateLine'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaDiagnosticBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaDiagnosticBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaShTruncateLine'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaShTruncateLine'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaDocTruncateLine'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaRenameBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['LspSagaLspFinderBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['TelescopePromptBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['TelescopeResultsBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['TelescopePreviewBorder'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['TelescopeNormal'] = { fg = c.vscFront, bg = 'NONE' },
  ['TelescopeSelection'] = { fg = c.vscFront, bg = c.vscPopupHighlightBlue },
  ['TelescopeMultiSelection'] = { fg = c.vscFront, bg = c.vscPopupHighlightBlue },
  ['TelescopeMatching'] = { fg = c.vscMediumBlue, bg = 'NONE', bold = true },
  ['TelescopePromptPrefix'] = { fg = c.vscFront, bg = 'NONE' },
  -- symbols-outline
  -- white fg and lualine blue bg
  ['FocusedSymbol'] = { fg = '#ffffff', bg = c.vscUiBlue },
  ['SymbolsOutlineConnector'] = { fg = c.vscLineNumber, bg = 'NONE' },
  ['diffAdded'] = { link = 'DiffAdd' },
  ['diffChanged'] = { link = 'DiffChange' },
  ['diffRemoved'] = { link = 'DiffDelete' }
}

---@type HLTable
M.add = {
  -- NvimTreeOpenedFolderName = { fg = "green", bold = true },
}
-- hl(0, '@type', { fg = c.vscBlueGreen, bg = 'NONE' })
-- hl(0, '@type.builtin', { fg = c.vscBlueGreen, bg = 'NONE' })
return M
