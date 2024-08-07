---@class Highlight
---@variable.member fg string color name or "#RRGGBB"
---@variable.member foreground string same fg, color name or "#RRGGBB"
---@variable.member bg string color name or "#RRGGBB"
---@variable.member background string same bg, color name or "#RRGGBB"
---@variable.member sp string color name or "#RRGGBB"
---@variable.member special string same sg, color name or "#RRGGBB"
---@variable.member blend integer value between 0 and 100
---@variable.member bold boolean
---@variable.member standout boolean
---@variable.member underline boolean
---@variable.member undercurl boolean
---@variable.member underdouble boolean
---@variable.member underdotted boolean
---@variable.member underdashed boolean
---@variable.member strikethrough boolean
---@variable.member italic boolean
---@variable.member reverse boolean
---@variable.member nocombine boolean
---@variable.member link string name of another highlight group to link to, see |:hi-link|.
---@variable.member default string Don't override existing definition |:hi-default|
---@variable.member ctermfg integer Sets foreground of cterm color |highlight-ctermfg|
---@variable.member ctermbg integer Sets background of cterm color |highlight-ctermbg|
---@variable.member cterm table cterm attribute map, like |highlight-args|.

---@alias HighlightGroups table<string, Highlight>

---setup highlight groups
---@param configs MatcolorConfig
---@return HighlightGroups
---@nodiscard
local function setup(configs)
   local colors = configs.colors
   local endOfBuffer = {
      fg = configs.show_end_of_buffer and colors.visual or colors.bg,
   }

   return {
      Normal = { fg = colors.fg, bg = colors.bg, },
      NormalFloat = { fg = colors.fg, bg = colors.bg, },
      Comment = { fg = colors.comment, italic = configs.italic_comment, },
      Constant = { fg = colors.green, },
      String = { fg = colors.green, },
      Character = { fg = colors.green, },
      Number = { fg = colors.green, },
      Boolean = { fg = colors.green, },
      Float = { fg = colors.green, },
      FloatBorder = { fg = colors.green, },
      Operator = { fg = colors.green, },
      Keyword = { fg = colors.green, },
      Keywords = { fg = colors.green, },
      Identifier = { fg = colors.green, },
      Function = { fg = colors.green, },
      Statement = { fg = colors.green, },
      Conditional = { fg = colors.green, },
      Repeat = { fg = colors.green, },
      Label = { fg = colors.green, },
      Exception = { fg = colors.green, },
      PreProc = { fg = colors.green, },
      Include = { fg = colors.green, },
      Define = { fg = colors.green, },
      Title = { fg = colors.green, },
      Macro = { fg = colors.green, },
      PreCondit = { fg = colors.green, },
      Type = { fg = colors.green, },
      StorageClass = { fg = colors.green, },
      Structure = { fg = colors.green, },
      TypeDef = { fg = colors.green, },
      Special = { fg = colors.green, italic = true },
      SpecialComment = { fg = colors.comment, italic = true, },
      Error = { fg = colors.green, },
      Todo = { fg = colors.green, bold = true, italic = true, },
      Underlined = { fg = colors.green, underline = true, },

      Cursor = { reverse = true, },
      CursorLineNr = { fg = colors.black, bold = true, },

      SignColumn = { bg = colors.bg, },

      Conceal = { fg = colors.comment, },
      CursorColumn = { bg = colors.black, },
      CursorLine = { bg = colors.black, },
      ColorColumn = { bg = colors.selection, },

      StatusLine = { fg = colors.green, bg = colors.black, },
      StatusLineNC = { fg = colors.comment, },
      StatusLineTerm = { fg = colors.green, bg = colors.black, },
      StatusLineTermNC = { fg = colors.comment, },

      Directory = { fg = colors.green, },
      DiffAdd = { fg = colors.bg, bg = colors.green, },
      DiffChange = { fg = colors.green, },
      DiffDelete = { fg = colors.green, },
      DiffText = { fg = colors.comment, },

      ErrorMsg = { fg = colors.green, },
      VertSplit = { fg = colors.black, },
      WinSeparator = { fg = colors.black, },
      Folded = { fg = colors.comment, },
      FoldColumn = {},
      Search = { fg = colors.black, bg = colors.green, },
      IncSearch = { fg = colors.green, bg = colors.comment, },
      LineNr = { fg = colors.comment, },
      MatchParen = { fg = colors.fg, underline = true, },
      NonText = { fg = colors.green, },
      Pmenu = { fg = colors.green, bg = colors.menu, },
      PmenuSel = { fg = colors.green, bg = colors.selection, },
      PmenuSbar = { bg = colors.bg, },
      PmenuThumb = { bg = colors.selection, },

      Question = { fg = colors.green, },
      QuickFixLine = { fg = colors.black, bg = colors.green, },
      SpecialKey = { fg = colors.green, },

      SpellBad = { fg = colors.green, underline = true, },
      SpellCap = { fg = colors.green, },
      SpellLocal = { fg = colors.green, },
      SpellRare = { fg = colors.green, },

      TabLine = { fg = colors.comment, },
      TabLineSel = { fg = colors.green, },
      TabLineFill = { bg = colors.bg, },
      Terminal = { fg = colors.green, bg = colors.black, },
      Visual = { bg = colors.visual, },
      VisualNOS = { fg = colors.visual, },
      WarningMsg = { fg = colors.green, },
      WildMenu = { fg = colors.black, bg = colors.green, },

      EndOfBuffer = endOfBuffer,

      -- TreeSitter
      ['@error'] = { fg = colors.green, },
      ['@punctuation.delimiter'] = { fg = colors.fg, },
      ['@punctuation.bracket'] = { fg = colors.fg, },
      ['@markup.list'] = { fg = colors.green, },

      ['@constant'] = { fg = colors.green, },
      ['@constant.builtin'] = { fg = colors.green, },
      ['@markup.link.label.symbol'] = { fg = colors.green, },

      ['@constant.macro'] = { fg = colors.green, },
      ['@string.regexp'] = { fg = colors.green, },
      ['@string'] = { fg = colors.green, },
      ['@string.escape'] = { fg = colors.green, },
      ['@string.special.symbol'] = { fg = colors.green, },
      ['@character'] = { fg = colors.green, },
      ['@number'] = { fg = colors.green, },
      ['@boolean'] = { fg = colors.green, },
      ['@number.float'] = { fg = colors.green, },
      ['@annotation'] = { fg = colors.green, },
      ['@attribute'] = { fg = colors.green, },
      ['@module'] = { fg = colors.green, },

      ['@function.builtin'] = { fg = colors.green, },
      ['@function'] = { fg = colors.green, },
      ['@function.macro'] = { fg = colors.green, },
      ['@variable.parameter'] = { fg = colors.green, },
      ['@variable.parameter.reference'] = { fg = colors.green, },
      ['@function.method'] = { fg = colors.green, },
      ['@variable.member'] = { fg = colors.green, },
      ['@property'] = { fg = colors.green, },
      ['@constructor'] = { fg = colors.green, },

      ['@keyword.conditional'] = { fg = colors.green, },
      ['@keyword.repeat'] = { fg = colors.green, },
      ['@label'] = { fg = colors.green, },

      ['@keyword'] = { fg = colors.green, },
      ['@keyword.function'] = { fg = colors.green, },
      ['@keyword.function.ruby'] = { fg = colors.green, },
      ['@keyword.operator'] = { fg = colors.green, },
      ['@operator'] = { fg = colors.green, },
      ['@keyword.exception'] = { fg = colors.green, },
      ['@type'] = { fg = colors.green, },
      ['@type.builtin'] = { fg = colors.green, italic = true, },
      ['@type.qualifier'] = { fg = colors.green, },
      ['@structure'] = { fg = colors.green, },
      ['@keyword.include'] = { fg = colors.green, },

      ['@variable'] = { fg = colors.fg, },
      ['@variable.builtin'] = { fg = colors.green, },

      ['@markup'] = { fg = colors.green, },
      ['@markup.strong'] = { fg = colors.green, bold = true, },     -- bold
      ['@markup.emphasis'] = { fg = colors.green, italic = true, }, -- italic
      ['@markup.underline'] = { fg = colors.green, },
      ['@markup.heading'] = { fg = colors.green, bold = true, },        -- title
      ['@markup.raw'] = { fg = colors.green, },                 -- inline code
      ['@markup.link.url'] = { fg = colors.green, italic = true, },      -- urls
      ['@markup.link'] = { fg = colors.green, bold = true, },

      ['@tag'] = { fg = colors.green, },
      ['@tag.attribute'] = { fg = colors.green, },
      ['@tag.delimiter'] = { fg = colors.green, },

      -- Semantic
      ['@class'] = { fg = colors.green },
      ['@struct'] = { fg = colors.green },
      ['@enum'] = { fg = colors.green },
      ['@enumMember'] = { fg = colors.green },
      ['@event'] = { fg = colors.green },
      ['@interface'] = { fg = colors.green },
      ['@modifier'] = { fg = colors.green },
      ['@regexp'] = { fg = colors.green },
      ['@typeParameter'] = { fg = colors.green },
      ['@decorator'] = { fg = colors.green },

      -- LSP Semantic (0.9+)
      ['@lsp.type.class'] = { fg = colors.green },
      ['@lsp.type.enum'] = { fg = colors.green },
      ['@lsp.type.decorator'] = { fg = colors.green },
      ['@lsp.type.enumMember'] = { fg = colors.green },
      ['@lsp.type.function'] = { fg = colors.green, },
      ['@lsp.type.interface'] = { fg = colors.green },
      ['@lsp.type.macro'] = { fg = colors.green },
      ['@lsp.type.method'] = { fg = colors.green, },
      ['@lsp.type.namespace'] = { fg = colors.green, },
      ['@lsp.type.parameter'] = { fg = colors.green, },
      ['@lsp.type.property'] = { fg = colors.green, },
      ['@lsp.type.struct'] = { fg = colors.green },
      ['@lsp.type.type'] = { fg = colors.green, },
      ['@lsp.type.variable'] = { fg = colors.fg, },

      -- HTML
      htmlArg = { fg = colors.green, },
      htmlBold = { fg = colors.green, bold = true, },
      htmlEndTag = { fg = colors.green, },
      htmlH1 = { fg = colors.green, },
      htmlH2 = { fg = colors.green, },
      htmlH3 = { fg = colors.green, },
      htmlH4 = { fg = colors.green, },
      htmlH5 = { fg = colors.green, },
      htmlH6 = { fg = colors.green, },
      htmlItalic = { fg = colors.green, italic = true, },
      htmlLink = { fg = colors.green, underline = true, },
      htmlSpecialChar = { fg = colors.green, },
      htmlSpecialTagName = { fg = colors.green, },
      htmlTag = { fg = colors.green, },
      htmlTagN = { fg = colors.green, },
      htmlTagName = { fg = colors.green, },
      htmlTitle = { fg = colors.green, },

      -- Markdown
      markdownBlockquote = { fg = colors.green, italic = true, },
      markdownBold = { fg = colors.green, bold = true, },
      markdownCode = { fg = colors.green, },
      markdownCodeBlock = { fg = colors.green, },
      markdownCodeDelimiter = { fg = colors.green, },
      markdownH1 = { fg = colors.green, bold = true, },
      markdownH2 = { fg = colors.green, bold = true, },
      markdownH3 = { fg = colors.green, bold = true, },
      markdownH4 = { fg = colors.green, bold = true, },
      markdownH5 = { fg = colors.green, bold = true, },
      markdownH6 = { fg = colors.green, bold = true, },
      markdownHeadingDelimiter = { fg = colors.green, },
      markdownHeadingRule = { fg = colors.comment, },
      markdownId = { fg = colors.green, },
      markdownIdDeclaration = { fg = colors.green, },
      markdownIdDelimiter = { fg = colors.green, },
      markdownItalic = { fg = colors.green, italic = true, },
      markdownLinkDelimiter = { fg = colors.green, },
      markdownLinkText = { fg = colors.green, },
      markdownListMarker = { fg = colors.green, },
      markdownOrdegreenListMarker = { fg = colors.green, },
      markdownRule = { fg = colors.comment, },

      --  Diff
      diffAdded = { fg = colors.green, },
      diffRemoved = { fg = colors.green, },
      diffFileId = { fg = colors.green, bold = true, reverse = true, },
      diffFile = { fg = colors.green, },
      diffNewFile = { fg = colors.green, },
      diffOldFile = { fg = colors.green, },

      debugPc = { bg = colors.menu, },
      debugBreakpoint = { fg = colors.green, reverse = true, },

      -- Git Signs
      GitSignsAdd = { fg = colors.green, },
      GitSignsChange = { fg = colors.green, },
      GitSignsDelete = { fg = colors.green, },
      GitSignsAddLn = { fg = colors.black, bg = colors.green, },
      GitSignsChangeLn = { fg = colors.black, bg = colors.green, },
      GitSignsDeleteLn = { fg = colors.black, bg = colors.green, },
      GitSignsCurrentLineBlame = { fg = colors.green, },

      -- Telescope
      TelescopePromptBorder = { fg = colors.comment, },
      TelescopeResultsBorder = { fg = colors.comment, },
      TelescopePreviewBorder = { fg = colors.comment, },
      TelescopeSelection = { fg = colors.green, bg = colors.selection, },
      TelescopeMultiSelection = { fg = colors.green, bg = colors.selection, },
      TelescopeNormal = { fg = colors.fg, bg = colors.bg, },
      TelescopeMatching = { fg = colors.green, },
      TelescopePromptPrefix = { fg = colors.green, },
      TelescopeResultsDiffDelete = { fg = colors.green },
      TelescopeResultsDiffChange = { fg = colors.green },
      TelescopeResultsDiffAdd = { fg = colors.green },

      -- Flash
      FlashLabel =  { bg = colors.green, fg = colors.green },

      -- NvimTree
      NvimTreeNormal = { fg = colors.fg, bg = colors.menu, },
      NvimTreeVertSplit = { fg = colors.bg, bg = colors.bg, },
      NvimTreeRootFolder = { fg = colors.fg, bold = true, },
      NvimTreeGitDirty = { fg = colors.green, },
      NvimTreeGitNew = { fg = colors.green, },
      NvimTreeImageFile = { fg = colors.green, },
      NvimTreeFolderIcon = { fg = colors.green, },
      NvimTreeIndentMarker = { fg = colors.green, },
      NvimTreeEmptyFolderName = { fg = colors.comment, },
      NvimTreeFolderName = { fg = colors.fg, },
      NvimTreeSpecialFile = { fg = colors.green, underline = true, },
      NvimTreeOpenedFolderName = { fg = colors.fg, },
      NvimTreeCursorLine = { bg = colors.selection, },
      NvimTreeIn = { bg = colors.selection, },

      NvimTreeEndOfBuffer = endOfBuffer,

      -- NeoTree
      NeoTreeNormal = { fg = colors.fg, bg = colors.menu, },
      NeoTreeNormalNC = { fg = colors.fg, bg = colors.menu, },
      NeoTreeDirectoryName = { fg = colors.fg },
      NeoTreeGitUnstaged = { fg = colors.green },
      NeoTreeGitModified = { fg = colors.green },
      NeoTreeGitUntracked = { fg = colors.green },
      NeoTreeDirectoryIcon = { fg = colors.green },
      NeoTreeIndentMarker = { fg = colors.green },
      NeoTreeDotfile = { fg = colors.comment },

      -- Bufferline
      BufferLineIndicatorSelected = { fg = colors.green, },
      BufferLineFill = { bg = colors.black, },
      BufferLineBufferSelected = { bg = colors.bg, },
      BufferLineSeparator = { fg = colors.black },

      -- LSP
      DiagnosticError = { fg = colors.green, },
      DiagnosticWarn = { fg = colors.green, },
      DiagnosticInfo = { fg = colors.green, },
      DiagnosticHint = { fg = colors.green, },
      DiagnosticUnderlineError = { undercurl = true, sp = colors.green, },
      DiagnosticUnderlineWarn = { undercurl = true, sp = colors.green, },
      DiagnosticUnderlineInfo = { undercurl = true, sp = colors.green, },
      DiagnosticUnderlineHint = { undercurl = true, sp = colors.green, },
      DiagnosticSignError = { fg = colors.green, },
      DiagnosticSignWarn = { fg = colors.green, },
      DiagnosticSignInfo = { fg = colors.green, },
      DiagnosticSignHint = { fg = colors.green, },
      DiagnosticFloatingError = { fg = colors.green, },
      DiagnosticFloatingWarn = { fg = colors.green, },
      DiagnosticFloatingInfo = { fg = colors.green, },
      DiagnosticFloatingHint = { fg = colors.green, },
      DiagnosticVirtualTextError = { fg = colors.green, },
      DiagnosticVirtualTextWarn = { fg = colors.green, },
      DiagnosticVirtualTextInfo = { fg = colors.green, },
      DiagnosticVirtualTextHint = { fg = colors.green, },

      LspDiagnosticsDefaultError = { fg = colors.green, },
      LspDiagnosticsDefaultWarning = { fg = colors.green, },
      LspDiagnosticsDefaultInformation = { fg = colors.green, },
      LspDiagnosticsDefaultHint = { fg = colors.green, },
      LspDiagnosticsUnderlineError = { fg = colors.green, undercurl = true, },
      LspDiagnosticsUnderlineWarning = { fg = colors.green, undercurl = true, },
      LspDiagnosticsUnderlineInformation = { fg = colors.green, undercurl = true, },
      LspDiagnosticsUnderlineHint = { fg = colors.green, undercurl = true, },
      LspReferenceText = { fg = colors.green, },
      LspReferenceRead = { fg = colors.green, },
      LspReferenceWrite = { fg = colors.green, },
      LspCodeLens = { fg = colors.green, },
      LspInlayHint = { fg = colors.fg, bg = colors.bg, },

      --LSP Saga
      LspFloatWinNormal = { fg = colors.fg, },
      LspFloatWinBorder = { fg = colors.comment, },
      LspSagaHoverBorder = { fg = colors.comment, },
      LspSagaSignatureHelpBorder = { fg = colors.comment, },
      LspSagaCodeActionBorder = { fg = colors.comment, },
      LspSagaDefPreviewBorder = { fg = colors.comment, },
      LspLinesDiagBorder = { fg = colors.comment, },
      LspSagaRenameBorder = { fg = colors.comment, },
      LspSagaBorderTitle = { fg = colors.menu, },
      LSPSagaDiagnosticTruncateLine = { fg = colors.comment, },
      LspSagaDiagnosticBorder = { fg = colors.comment, },
      LspSagaShTruncateLine = { fg = colors.comment, },
      LspSagaDocTruncateLine = { fg = colors.comment, },
      LspSagaLspFinderBorder = { fg = colors.comment, },
      CodeActionNumber = { bg = 'NONE', fg = colors.green },

      -- IndentBlankLine
      IndentBlanklineContextChar = { fg = colors.green, nocombine = true, },

      -- Nvim compe
      CmpItemAbbrDeprecated = { fg = colors.green, bg = colors.bg, },
      CmpItemAbbrMatch = { fg = colors.green, bg = colors.bg, },

      -- barbar
      BufferVisibleTarget = { fg = colors.green },
      BufferTabpages = { fg = colors.green, bg = colors.black, bold = true },
      BufferTabpageFill = { fg = colors.green, bg = colors.black },
      BufferCurrentSign = { fg = colors.green },
      BufferCurrentTarget = { fg = colors.green },
      BufferInactive = { fg = colors.comment, bg = colors.black, italic = true },
      BufferInactiveIndex = { fg = colors.green, bg = colors.black, italic = true },
      BufferInactiveMod = { fg = colors.green, bg = colors.black, italic = true },
      BufferInactiveSign = { fg = colors.green, bg = colors.black, italic = true },
      BufferInactiveTarget = { fg = colors.green, bg = colors.black, bold = true },

      -- Compe
      CompeDocumentation = { link = "Pmenu" },
      CompeDocumentationBorder = { link = "Pmenu" },

      -- Cmp
      CmpItemAbbr = { fg = colors.green, bg = colors.bg },
      CmpItemKind = { fg = colors.green, bg = colors.bg },
      CmpItemKindMethod = { link = "@function.method" },
      CmpItemKindText = { link = "@markup" },
      CmpItemKindFunction = { link = "@function" },
      CmpItemKindConstructor = { link = "@type" },
      CmpItemKindVariable = { link = "@variable" },
      CmpItemKindClass = { link = "@type" },
      CmpItemKindInterface = { link = "@type" },
      CmpItemKindModule = { link = "@module" },
      CmpItemKindProperty = { link = "@property" },
      CmpItemKindOperator = { link = "@operator" },
      CmpItemKindReference = { link = "@variable.parameter.reference" },
      CmpItemKindUnit = { link = "@variable.member" },
      CmpItemKindValue = { link = "@variable.member" },
      CmpItemKindField = { link = "@variable.member" },
      CmpItemKindEnum = { link = "@variable.member" },
      CmpItemKindKeyword = { link = "@keyword" },
      CmpItemKindSnippet = { link = "@markup" },
      CmpItemKindColor = { link = "DevIconCss" },
      CmpItemKindFile = { link = "TSURI" },
      CmpItemKindFolder = { link = "TSURI" },
      CmpItemKindEvent = { link = "@constant" },
      CmpItemKindEnumMember = { link = "@variable.member" },
      CmpItemKindConstant = { link = "@constant" },
      CmpItemKindStruct = { link = "@structure" },
      CmpItemKindTypeParameter = { link = "@variable.parameter" },

      -- navic
      NavicIconsFile = { link = "CmpItemKindFile" },
      NavicIconsModule = { link = "CmpItemKindModule" },
      NavicIconsNamespace = { link = "CmpItemKindModule" },
      NavicIconsPackage = { link = "CmpItemKindModule" },
      NavicIconsClass = { link = "CmpItemKindClass" },
      NavicIconsMethod = { link = "CmpItemKindMethod" },
      NavicIconsProperty = { link = "CmpItemKindProperty" },
      NavicIconsField = { link = "CmpItemKindField" },
      NavicIconsConstructor = { link = "CmpItemKindConstructor" },
      NavicIconsEnum = { link = "CmpItemKindEnum" },
      NavicIconsInterface = { link = "CmpItemKindInterface" },
      NavicIconsFunction = { link = "CmpItemKindFunction" },
      NavicIconsVariable = { link = "CmpItemKindVariable" },
      NavicIconsConstant = { link = "CmpItemKindConstant" },
      NavicIconsString = { link = "String" },
      NavicIconsNumber = { link = "Number" },
      NavicIconsBoolean = { link = "Boolean" },
      NavicIconsArray = { link = "CmpItemKindClass" },
      NavicIconsObject = { link = "CmpItemKindClass" },
      NavicIconsKey = { link = "CmpItemKindKeyword" },
      NavicIconsKeyword = { link = "CmpItemKindKeyword" },
      NavicIconsNull = { fg = "blue" },
      NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
      NavicIconsStruct = { link = "CmpItemKindStruct" },
      NavicIconsEvent = { link = "CmpItemKindEvent" },
      NavicIconsOperator = { link = "CmpItemKindOperator" },
      NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
      NavicText = { fg = 'gray' },
      NavicSeparator = { fg = 'gray' },

      -- TS rainbow colors
      rainbowcol1 = { fg = colors.fg },
      rainbowcol2 = { fg = colors.green },
      rainbowcol3 = { fg = colors.green },
      rainbowcol4 = { fg = colors.green },
      rainbowcol5 = { fg = colors.green },
      rainbowcol6 = { fg = colors.green },
      rainbowcol7 = { fg = colors.fg },

      -- Rainbow delimiter
      RainbowDelimitergreen = {fg = colors.green },

      -- mini.indentscope
      MiniIndentscopeSymbol = { fg = colors.fg },
      MiniIndentscopeSymbolOff = { fg = colors.fg },

      -- mini.icons
      MiniIconsAzure = { fg = colors.green },
      MiniIconsBlue = { fg = colors.green },
      MiniIconsgreen = { fg = colors.green },
      MiniIconsGrey = { fg = colors.green },


      -- goolord/alpha-nvim
      AlphaHeader = { fg = colors.green },
      AlphaButtons = { fg = colors.green },
      AlphaShortcut = { fg = colors.green },
      AlphaFooter = { fg = colors.green, italic = true },

      -- nvimdev/dashboard-nvim
      DashboardShortCut = { fg = colors.green },
      DashboardHeader = { fg = colors.green },
      DashboardCenter = { fg = colors.fg },
      DashboardFooter = { fg = colors.green, italic = true },
      DashboardKey = { fg = colors.green },
      DashboardDesc = { fg = colors.green },
      DashboardIcon = { fg = colors.green, bold = true },

      -- dap UI
      DapUIPlayPause = { fg = colors.green },
      DapUIRestart = { fg = colors.green },
      DapUIStop = { fg = colors.green },
      DapUIStepOver = { fg = colors.green },
      DapUIStepInto = { fg = colors.green },
      DapUIStepOut = { fg = colors.green },
      DapUIStepBack = { fg = colors.green },
      DapUIType = { fg = colors.green },
      DapUIScope = { fg = colors.green },
      DapUIModifiedValue = { fg = colors.green, bold = true },
      DapUIDecoration = { fg = colors.green },
      DapUIThread = { fg = colors.green },
      DapUIStoppedThread = { fg = colors.green },
      DapUISource = { fg = colors.green },
      DapUILineNumber = { fg = colors.green },
      DapUIFloatBorder = { fg = colors.green },
      DapUIWatchesEmpty = { fg = colors.green },
      DapUIWatchesValue = { fg = colors.green },
      DapUIWatchesError = { fg = colors.green },
      DapUIBreakpointsPath = { fg = colors.green },
      DapUIBreakpointsInfo = { fg = colors.green },
      DapUIBreakpointsCurrentLine = { fg = colors.green, bold = true },
      DapStoppedLine = { default = true, link = 'Visual' },
      DapUIWinSelect = { fg = colors.green, bold = true },

      -- Notify
      NotifyInfoIcon = { fg = colors.green },
      NotifyInfoTitle = { fg = colors.green },
      NotifyInfoBorder = { fg = colors.green},
      NotifyErrorIcon = { fg = colors.green },
      NotifyErrorTitle = { fg = colors.green },
      NotifyErrorBorder = { fg = colors.green },
      NotifyWarnIcon = { fg = colors.green },
      NotifyWarnTitle = { fg = colors.green },
      NotifyWarnBorder = { fg = colors.green },
   }
end

return {
   setup = setup,
}
