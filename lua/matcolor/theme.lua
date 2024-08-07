local colors = require 'matcolor.colors'
local config = require 'matcolor.config'

local M = {}

M.base = {
    ---------------------------------------
    --        Styles
    ---------------------------------------
    Bold = { style = 'bold' },
    Italic = { style = 'italic' },
    Underlined = { style = 'underline' },
    ---------------------------------------


    -----------------------------------------
    --        Editors settings
    -----------------------------------------
    Boolean = { fg = colors.green, style = config.italic_booleans },

    Character    = { fg = colors.green },
    ColorColumn  = { bg = colors.green },
    green      = { fg = colors.green, style = config.italic_greens },
    Conceal      = { fg = colors.fg }, -- {bg = config.transparent_background and 'NONE' or colors.bg },
    Conditional  = { fg = colors.green },
    Constant     = { fg = colors.green },
    Cursor       = { fg = colors.green, bg = colors.bg },
    CursorColumn = { fg = "NONE", bg = "NONE" },
    -- CursorIM = { fg = colors.cursor_fg, bg = colors.cursor_bg },
    CursorLine   = { bg = colors.green },
    CursorLineNr = { fg = colors.green, bg = colors.gutter_bg, style = 'bold' },

    Debug       = { fg = colors.fg },
    Define      = { fg = colors.green },
    Delimiter   = { fg = colors.green },
    DiffAdd     = { fg = colors.green },
    DiffAdded   = { fg = colors.green },
    DiffChange  = { fg = colors.green },
    DiffDelete  = { fg = colors.green },
    DiffRemoved = { fg = colors.green },
    DiffText    = { fg = colors.green },
    DiffFile    = { fg = colors.green },
    -- DiffIndexLine     = { fg = colors.green3 },


    -- EndOfBuffer = { fg = colors.bg },
    Error     = { fg = colors.green, bg = colors.bg, style = 'bold' },
    ErrorMsg  = { fg = colors.green, bg = colors.green, style = 'bold' },
    Exception = { fg = colors.green },

    Float       = { fg = colors.green },
    FloatBorder = { fg = colors.green, bg = "NONE" },
    FoldColumn  = { fg = colors.line_fg },
    Folded      = { fg = colors.green, bg = colors.green },
    Function    = { fg = colors.green },

    Identifier = { fg = colors.green },
    Ignore     = { fg = colors.green },
    IncSearch  = { fg = colors.bg, bg = colors.green },
    Include    = { fg = colors.green,  style = config.italic_keywords },

    Keyword = { fg = colors.green,  style = config.italic_keywords },

    Label  = { fg = colors.green },
    LineNr = { fg = colors.line_fg, bg = colors.line_bg },

    Macro         = { fg = colors.green,  style = config.italic_keywords },
    MatchParen    = { fg = colors.green, bg = colors.black },
    MatchParenCur = { style = 'underline' },
    MatchWord     = { style = 'underline' },
    MatchWordCur  = { style = 'underline' },
    ModeMsg       = { fg = colors.fg, bg = colors.bg },
    MoreMsg       = { fg = colors.green },
    MsgArea       = { fg = colors.fg, bg = config.transparent_background and 'NONE' or colors.bg },
    MsgSeparator  = { fg = colors.fg, bg = colors.bg },

    NonText     = { fg = colors.green },
    Normal      = { fg = colors.fg, bg = config.transparent_background and 'NONE' or colors.bg },
    NormalFloat = { bg = colors.green },
    NormalNC    = { fg = colors.green, bg = config.transparent_background and 'NONE' or colors.bg },
    Number      = { fg = colors.green },

    Operator   = { fg = colors.green },
    Pmenu      = { fg = colors.green, bg = colors.black },
    PmenuSbar  = { bg = colors.green },
    PmenuSel   = { fg = colors.line_fg, bg = colors.black },
    PmenuThumb = { bg = colors.black },
    PreCondit  = { fg = colors.green },
    PreProc    = { fg = colors.green },

    Question     = { fg = colors.green },
    QuickFixLine = { fg = colors.green },

    Repeat = { fg = colors.green },

    Search              = { fg = colors.line_fg, bg = colors.green },
    SignColumn          = { bg = colors.line_bg },
    Special             = { fg = colors.green },
    SpecialChar         = { fg = colors.green },
    Specialgreen      = { fg = colors.green },
    SpecialKey          = { fg = colors.green, style = 'bold' },
    SpellBad            = { fg = colors.green, style = 'underline' },
    SpellCap            = { fg = colors.green, style = 'underline' },
    SpellLocal          = { fg = colors.green, style = 'underline' },
    SpellRare           = { fg = colors.green, style = 'underline' },
    Statement           = { fg = colors.green },
    StatusLine          = { fg = colors.line_fg, bg = colors.black },
    StatusLineNC        = { fg = colors.line_fg, bg = colors.black },
    StatusLineSeparator = { fg = colors.green },
    StatusLineTerm      = { fg = colors.green, bg = colors.black },
    StatusLineTermNC    = { fg = colors.green, bg = colors.black },
    StorageClass        = { fg = colors.green },
    String              = { fg = colors.green },
    Structure           = { fg = colors.green },
    Substitute          = { fg = colors.green, bg = colors.green },

    TabLine      = { fg = colors.line_fg },
    TabLineFill  = { fg = colors.line_fg },
    TabLineSel   = { fg = colors.fg },
    Tag          = { fg = colors.green },
    TermCursor   = { fg = colors.cursor_fg, bg = colors.cursor_bg },
    TermCursorNC = { fg = colors.cursor_fg, bg = colors.cursor_bg },
    Title        = { fg = colors.green },
    Todo         = { fg = colors.green, style = 'bold' },
    Type         = { fg = colors.green, style = config.italic_keywords },
    Typedef      = { fg = colors.green, style = config.italic_keywords },

    Variable  = { fg = colors.green },
    VertSplit = { fg = colors.vsplit_bg },
    Visual    = { fg = "NONE", bg = colors.visual_select_bg, style = 'bold' },
    VisualNOS = { fg = colors.selection_fg, bg = colors.selection_bg },

    WarningMsg = { fg = colors.green, bg = colors.none },
    greenspace = { fg = colors.green },
    WildMenu   = { fg = colors.fg },
    lCursor    = { fg = colors.cursor_fg, bg = colors.cursor_bg },

    -- Markdown
    markdownBold              = { fg = colors.green, style = 'bold' },
    markdownCode              = { fg = colors.green },
    markdownCodeBlock         = { fg = colors.green },
    markdownUrl               = { fg = colors.green, style = 'underline' },
    markdownCodeError         = { fg = colors.green },
    markdownH1                = { fg = colors.green },
    markdownH2                = { fg = colors.green },
    markdownH3                = { fg = colors.green },
    markdownH4                = { fg = colors.green },
    markdownH5                = { fg = colors.green },
    markdownH6                = { fg = colors.green },
    markdownId                = { fg = colors.green },
    markdownItalic            = { gf = colors.green, style = 'italic' },
    markdownLinkText          = { fg = colors.green },
    markdownRule              = { fg = colors.green },
    markdownListMarker        = { fg = colors.green },
    markdownHeadingDelimiter  = { fg = colors.green },
    markdownHeadingRule       = { fg = colors.green },
    markdownUrlTitleDelimiter = { fg = colors.green },
    markdownCodeSpecial       = { fg = colors.green },
    markdownCodeDelimiter     = { fg = colors.green },
    markdownBlockquote        = { fg = colors.green },
    markdownIdDeclaration     = { fg = colors.green },
    markdownIdDelimiter       = { fg = colors.green },
    markdownLinkDelimiter     = { fg = colors.green },
    markdownOrderedListMarker = { fg = colors.green },

    -----------------------------------------
    --        end Editors settings
    -----------------------------------------
}




M.plugins = {

    -----------------------------------------
    --   Buffer:
    -----------------------------------------
    BufferCurrent        = { fg = colors.fg, bg = colors.green },
    BufferCurrentIndex   = { fg = colors.fg, bg = colors.bg },
    BufferCurrentMod     = { fg = colors.green, bg = colors.bg },
    BufferCurrentSign    = { fg = colors.green, bg = colors.bg },
    BufferCurrentTarget  = { fg = colors.green, bg = colors.bg, style = 'bold' },
    BufferInactive       = { fg = colors.green, bg = colors.green },
    BufferInactiveIndex  = { fg = colors.green, bg = colors.green },
    BufferInactiveMod    = { fg = colors.green, bg = colors.green },
    BufferInactiveSign   = { fg = colors.green, bg = colors.green },
    BufferInactiveTarget = { fg = colors.green, bg = colors.green, style = 'bold' },
    BufferVisible        = { fg = colors.fg, bg = colors.bg },
    BufferVisibleIndex   = { fg = colors.fg, bg = colors.bg },
    BufferVisibleMod     = { fg = colors.green, bg = colors.bg },
    BufferVisibleSign    = { fg = colors.green, bg = colors.bg },
    BufferVisibleTarget  = { fg = colors.green, bg = colors.bg, style = 'bold' },
    BufferLineFill       = { fg = colors.fg, bg = colors.green, style = 'bold' },
    -----------------------------------------


    WhichKey = { fg = colors.green, },
    WhichKeySeperator = { fg = colors.green, },
    WhichKeyGroup = { fg = colors.green },
    WhichKeyDesc = { fg = colors.green },
    WhichKeyFloat = { bg = colors.green },

    -----------------------------------------
    --   Cmp:    github.com/hrsh7th/nvim-cmp
    -----------------------------------------
    CmpItemAbbrDeprecated  = { fg = colors.green },
    CmpDocumentation       = { fg = colors.fg },
    CmpDocumentationBorder = { fg = colors.green },
    CmpItemAbbr            = { fg = colors.fg },
    CmpItemAbbrMatch       = { fg = colors.green },
    CmpItemAbbrMatchFuzzy  = { fg = colors.green },
    CmpItemKind            = { fg = colors.green },
    CmpItemKindMethod      = { fg = colors.green },
    CmpItemKindConstructor = { fg = colors.green },
    CmpItemKindClass       = { fg = colors.green },
    CmpItemKindVariabl     = { fg = colors.green },
    CmpItemKindField       = { fg = colors.green },
    CmpItemKindProperty    = { fg = colors.green },
    CmpItemKindEnumMember  = { fg = colors.green },
    CmpItemKindConstant    = { fg = colors.green },
    CmpItemKindEnum        = { fg = colors.green },
    CmpItemKindStruct      = { fg = colors.green },
    CmpItemKindKeyword     = { fg = colors.green },
    CmpItemMenu            = { fg = colors.green },
    CmpItemKindOperator    = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --    Dashboard: github.com/glepnir/dashboard-nvim
    -----------------------------------------
    DashboardCenter = { fg = colors.green },
    DashboardFooter = { fg = colors.green },
    DashboardHeader = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --   Debug:
    -----------------------------------------
    debugBreakpoint = { fg = colors.green, style = 'reverse' },
    debugPc = { bg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --   Diffview
    -----------------------------------------
    DiffViewNormal             = { fg = colors.green, bg = colors.green },
    DiffviewFilePanelDeletion  = { fg = colors.green },
    DiffviewFilePanelInsertion = { fg = colors.green },
    DiffviewStatusAdded        = { fg = colors.green },
    DiffviewStatusDeleted      = { fg = colors.green },
    DiffviewStatusModified     = { fg = colors.green },
    DiffviewStatusRenamed      = { fg = colors.green },
    DiffviewVertSplit          = { bg = colors.bg },
    -----------------------------------------


    -----------------------------------------
    --   Gitsigns: github.com/lewis6991/gitsigns.nvim
    -----------------------------------------
    GitSignsAdd    = { fg = colors.green, bg = colors.line_bg },
    GitSignsChange = { fg = colors.green, bg = colors.line_bg },
    GitSignsDelete = { fg = colors.green, bg = colors.line_bg },
    -----------------------------------------


    -----------------------------------------
    -- gitgutter: github.com/airblade/vim-gitgutter
    -----------------------------------------
    GitGutterAdd    = { fg = colors.green },
    GitGutterChange = { fg = colors.green },
    GitGutterDelete = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --  Indent-blankline: github.com/lukas-reineke/indent-blankline.nvim
    -----------------------------------------
    IndentBlanklineChar               = { fg = colors.green },
    IndentBlanklineContextChar        = { fg = colors.green },
    IndentBlanklineSpaceChar          = { fg = colors.green },
    IndentBlanklineSpaceCharBlankline = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --   Lsp: neovim.io/doc/user/lsp.html
    -----------------------------------------
    DiagnosticVirtualTextInfo = { fg = colors.green },
    DiagnosticHint            = { fg = colors.green },
    DiagnosticError           = { fg = colors.green },
    DiagnosticInfo            = { fg = colors.green },
    DiagnosticVirtualTextWarn = { fg = colors.green },
    DiagnosticWarn            = { fg = colors.green },

    DiagnosticFloatingError = { fg = colors.green },
    DiagnosticFloatingHint  = { fg = colors.green },
    DiagnosticFloatingInfo  = { fg = colors.green },
    DiagnosticFloatingWarn  = { fg = colors.green },

    DiagnosticSignError = { fg = colors.green, bg = colors.line_bg },
    DiagnosticSignHint  = { fg = colors.green, bg = colors.line_bg },
    DiagnosticSignInfo  = { fg = colors.green, bg = colors.line_bg },
    DiagnosticSignWarn  = { fg = colors.green, bg = colors.line_bg },

    DiagnosticUnderlineError = { style = 'underline' },
    DiagnosticUnderlineHint  = { style = 'underline' },
    DiagnosticUnderlineInfo  = { style = 'underline' },
    DiagnosticUnderlineWarn  = { style = 'underline' },

    DiagnosticVirtualTextError = { fg = colors.green },
    DiagnosticVirtualTextHint  = { fg = colors.green },
    -----------------------------------------

    -----------------------------------------
    -- NerdTree: github.com/preservim/nerdtree
    -----------------------------------------
    Directory               = { fg = colors.green },
    NERDTreeUp              = { fg = colors.green },
    NERDTreeDir             = { fg = colors.green },
    NERDTreeOpenable        = { fg = colors.green },
    NERDTreeClosable        = { fg = colors.green },
    NERDTreeIgnore          = { fg = colors.green },
    NERDTreeHelpKey         = { fg = colors.green },
    NERDTreeHelpTitle       = { fg = colors.green },
    NERDTreeToggleOn        = { fg = colors.green },
    NERDTreeToggleOff       = { fg = colors.green },
    NERDTreeHelpCommand     = { fg = colors.green },
    NERDTreeFile            = { fg = colors.green },
    NERDTreeLinkTarget      = { fg = colors.green },
    NERDTreeLinkFile        = { fg = colors.green },
    NERDTreeLinkDir         = { fg = colors.green },
    NERDTreeNodeDelimiters  = { fg = colors.green },
    NERDTreeDirSlash        = { fg = colors.green },
    NERDTreeExecFile        = { fg = colors.green },
    NERDTreeRO              = { fg = colors.green },
    NERDTreeBookmarkName    = { fg = colors.green },
    NERDTreeFlags           = { fg = colors.green },
    NERDTreeCWD             = { fg = colors.green },
    NERDTreeBookmarksLeader = { fg = colors.green },
    NERDTreeBookmarksHeader = { fg = colors.green },
    NERDTreeBookmark        = { fg = colors.green },
    NERDTreePart            = { fg = colors.green },
    NERDTreePartFile        = { fg = colors.green },
    NERDTreeCurrentNode     = { fg = colors.green },


    -----------------------------------------
    -- Startify: github.com/mhinz/vim-startify
    -----------------------------------------
    StartifyEndOfBuffer = { fg = colors.green },
    StartifyNumber      = { fg = colors.green },
    StartifySelect      = { fg = colors.green },
    StartifyBracket     = { fg = colors.green },
    StartifySpecial     = { fg = colors.green },
    StartifyVar         = { fg = colors.green },
    StartifyPath        = { fg = colors.green },
    StartifyFile        = { fg = colors.green },
    StartifySlash       = { fg = colors.green },
    StartifyHeader      = { fg = colors.green },
    StartifyFooter      = { fg = colors.green },
    StartifySection     = { fg = colors.green },

    -----------------------------------------
    --   LspDiagnostics:
    -----------------------------------------
    LspDiagnosticsDefaultHint            = { fg = colors.green }, -- Deprecated
    LspDiagnosticsError                  = { fg = colors.green }, -- Deprecated
    LspDiagnosticsFloatingError          = { fg = colors.green }, -- Deprecated
    LspDiagnosticsFloatingHint           = { fg = colors.green }, -- Deprecated
    LspDiagnosticsFloatingInformation    = { fg = colors.green }, -- Deprecated
    LspDiagnosticsFloatingWarning        = { fg = colors.green }, -- Deprecated
    LspDiagnosticsHint                   = { fg = colors.green }, -- Deprecated
    LspDiagnosticsInformation            = { fg = colors.green }, -- Deprecated
    LspDiagnosticsSignHint               = { fg = colors.green }, -- Deprecated
    LspDiagnosticsSignInformation        = { fg = colors.green }, -- Deprecated
    LspDiagnosticsSignWarning            = { fg = colors.green }, -- Deprecated
    LspDiagnosticsUnderlineError         = { style = 'underline' }, -- Deprecated
    LspDiagnosticsUnderlineHint          = { style = 'underline' }, -- Deprecated
    LspDiagnosticsUnderlineWarning       = { style = 'underline' }, -- Deprecated
    LspDiagnosticsVirtualTextWarning     = { fg = colors.green }, -- Deprecated
    LspDiagnosticsWarning                = { fg = colors.green }, -- Deprecated
    LspReferenceRead                     = { bg = colors.fg_gutter, style = 'bold' }, -- Deprecated
    LspReferenceText                     = { bg = colors.fg_gutter, style = 'bold' }, -- Deprecated
    LspReferenceWrite                    = { bg = colors.fg_gutter, style = 'bold' }, -- Deprecated
    LspDiagnosticsDefaultError           = { fg = colors.green }, -- Deprecated
    LspDiagnosticsSignError              = { fg = colors.green }, -- Deprecated
    LspDiagnosticsDefaultWarning         = { fg = colors.green }, -- Deprecated
    LspDiagnosticsDefaultInformation     = { fg = colors.green }, -- Deprecated
    LspDiagnosticsVirtualTextHint        = { fg = colors.green }, -- Deprecated
    LspDiagnosticsVirtualTextInformation = { fg = colors.green }, -- Deprecated
    LspDiagnosticsUnderlineInformation   = { style = 'underline' }, -- Deprecated
    -----------------------------------------


    -----------------------------------------
    -- VIM INDENT GUIDES:   github.com/nathanaelkane/vim-indent-guides
    -----------------------------------------
    IndentGuidesEven = { fg = colors.green },
    IndentGuidesOdd = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --   flutter-tools.nvim:    github.com/akinsho/flutter-tools.nvim/
    -----------------------------------------
    FlutterWidgetGuides = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    -- for python language:
    -----------------------------------------
    pythonConditional = { fg = colors.green },
    pythonException   = { fg = colors.green },
    pythonFunction    = { fg = colors.green },
    pythonInclude     = { fg = colors.green },
    pythonOperator    = { fg = colors.green },
    pythonStatement   = { fg = colors.green },
    pythonBoolean     = { fg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --    Neogit: github.com/TimUntersberger/neogit
    -----------------------------------------
    NeogitBranch               = { fg = colors.green },
    NeogitRemote               = { fg = colors.green },
    NeogitHunkHeader           = { fg = colors.green, bg = colors.green },
    NeogitDiffContext          = { fg = colors.green, bg = colors.bg },
    NeogitDiffAdd              = { fg = colors.green, bg = colors.green },
    NeogitDiffDelete           = { fg = colors.green, bg = colors.green },
    -- Neogit...Highlight is when group is focused
    NeogitHunkHeaderHighlight  = { fg = colors.green, bg = colors.green },
    NeogitDiffContextHighlight = { fg = colors.green, bg = colors.bg },
    NeogitDiffAddHighlight     = { fg = colors.green, bg = colors.green },
    NeogitDiffDeleteHighlight  = { fg = colors.green, bg = colors.green },
    -----------------------------------------


    -----------------------------------------
    --   Nvim-tree: github.com/kyazdani42/nvim-tree.lua
    -----------------------------------------
    NvimTreeFolderIcon       = { fg = colors.green },
    NvimTreeEmptyFolderName  = { fg = colors.green, style = "italic" },
    NvimTreeCursorLine       = { fg = colors.line_fg, bg = colors.green },
    NvimTreeExecFile         = { fg = colors.green },
    NvimTreeFolderName       = { fg = colors.green },
    NvimTreeGitDeleted       = { fg = colors.green },
    NvimTreeGitDirty         = { fg = colors.green },
    NvimTreeGitMerge         = { fg = colors.green },
    NvimTreeGitNew           = { fg = colors.green },
    NvimTreeGitRenamed       = { fg = colors.green },
    NvimTreeGitStaged        = { fg = colors.green },
    NvimTreeImageFile        = { fg = colors.green },
    NvimTreeIndentMarker     = { fg = colors.green },
    NvimTreeNormal           = { fg = colors.green, bg = colors.black },
    NvimTreeNormalNC         = { bg = colors.black },
    NvimTreeOpenedFolderName = { fg = colors.green, style = 'italic' },
    NvimTreeRootFolder       = { fg = colors.green, style = 'bold' },
    NvimTreeSpecialFile      = { fg = colors.green },
    NvimTreeSymlink          = { fg = colors.green },
    NvimTreeVertSplit        = { fg = colors.black },
    NvimTreeEndOfBuffer      = { fg = colors.green },
    -----------------------------------------

    -----------------------------------------
    --    telescope: github.com/nvim-telescope/telescope.nvim
    -----------------------------------------
    TelescopeBorder       = { fg = colors.green, bg = config.transparent_background and 'NONE' or colors.bg },
    TelescopeMatching     = { fg = colors.green },
    TelescopePromptPrefix = { fg = colors.green },
    TelescopeSelection    = { fg = colors.green, bg = colors.green },
    -----------------------------------------

    -----------------------------------------
    -- https://github.com/folke/trouble.nvim
    -----------------------------------------
    -----------------------------------------
    TroubleTextInformation = { fg = colors.green },
    TroubleFile = { fg = colors.green }, -- the source file that has error
    TroubleFoldIcon = { fg = colors.green }, -- fold icon color
    TroubleCount = { fg = colors.green },
    TroubleError = { fg = colors.green, bg = colors.line_fg },

    TroubleTextError = { fg = colors.green }, -- error info text
    TroubleNormal = { fg = colors.green },
    TroubleLocation = { fg = colors.green }, -- location of error
    TroubleIndent = { fg = colors.green }, -- indent color

    TroubleCode = { fg = colors.green },
    TroubleSignError = { fg = colors.green }, -- error sign color

    TroubleSignWarning     = { fg = colors.green },
    TroubleWarning         = { fg = colors.green },
    TroublePreview         = { fg = colors.green },
    TroubleSignInformation = { fg = colors.green },

    TroubleSource = { fg = colors.green },
    TroubleSignHint = { fg = colors.green },
    TroubleSignOther = { fg = colors.green },
    TroubleTextWarning = { fg = colors.green },
    TroubleInformation = { fg = colors.green },
    TroubleHint = { fg = colors.green },
    TroubleTextHint = { fg = colors.green },
    TroubleText = { fg = colors.green },

    -----------------------------------------

    -----------------------------------------
    -- CodeActionMenu: github.com/weilbith/nvim-code-action-menu
    -----------------------------------------

    CodeActionMenuWarningMessageText   = { fg = colors.green },
    CodeActionMenuWarningMessageBorder = { fg = colors.green },
    CodeActionMenuMenuIndex            = { fg = colors.green },
    CodeActionMenuMenuKind             = { fg = colors.green },
    CodeActionMenuMenuTitle            = { fg = colors.green },
    CodeActionMenuMenuDisabled         = { fg = colors.green },
    CodeActionMenuMenuSelection        = { fg = colors.green },
    CodeActionMenuDetailsTitle         = { fg = colors.green },
    CodeActionMenuDetailsLabel         = { fg = colors.green },
    CodeActionMenuDetailsPreferred     = { fg = colors.green },
    CodeActionMenuDetailsDisabled      = { fg = colors.green },
    CodeActionMenuDetailsUndefined     = { fg = colors.green },





    -----------------------------------------
    -- MAKE
    -----------------------------------------

    cmakeCommand              = { fg = colors.green },
    cmakeArguments            = { fg = colors.green },
    cmakeKWvariable_watch     = { fg = colors.green },
    cmakeKWproject            = { fg = colors.green },
    cmakeGeneratorExpressions = { fg = colors.green },
    cmakeVariable             = { fg = colors.green },
    cmakeKWuse_mangled_mesa   = { fg = colors.fg, style = 'italic' },
    -----------------------------------------


    -----------------------------------------
    -- treesitter:  github.com/nvim-treesitter/nvim-treesitter
    -----------------------------------------
    TSAnnotation         = { fg = colors.green },
    TSAttribute          = { fg = colors.green },
    TSBoolean            = { fg = colors.green, style = config.italic_booleans },
    TSCharacter          = { fg = colors.green },
    TSCharacterSpecial   = { fg = colors.green },
    TSgreen            = { fg = colors.green, style = config.italic_greens },
    TSConditional        = { fg = colors.green, style = config.italic_keywords },
    TSConstBuiltin       = { fg = colors.green },
    TSConstMacro         = { fg = colors.green },
    TSConstant           = { fg = colors.green },
    TSConstructor        = { fg = colors.green },
    TSEmphasis           = { style = 'italic' },
    TSError              = { fg = colors.green, bg = colors.bg, style = 'bold' },
    TSException          = { fg = colors.green },
    TSField              = { fg = colors.green },
    TSFloat              = { fg = colors.green },
    TSFuncBuiltin        = { fg = colors.green, style = config.italic_functions },
    TSFuncMacro          = { fg = colors.green, style = config.italic_functions },
    TSFunction           = { fg = colors.green, style = config.italic_functions },
    TSInclude            = { fg = colors.green, },
    TSKeyword            = { fg = colors.green, style = config.italic_keywords },
    TSKeywordFunction    = { fg = colors.green, style = config.italic_functions },
    TSKeywordOperator    = { fg = colors.green },
    TSKeywordReturn      = { fg = colors.green, style = config.italic_keywords },
    TSNone               = { fg = colors.green },
    TSLabel              = { fg = colors.green },
    TSLiteral            = { fg = colors.green },
    TSMethod             = { fg = colors.green, style = config.italic_functions },
    TSNamespace          = { fg = colors.green },
    TSNumber             = { fg = colors.green },
    TSOperator           = { fg = colors.green },
    TSParameter          = { fg = colors.green },
    TSParameterReference = { fg = colors.green },
    TSProperty           = { fg = colors.green },
    TSPunctBracket       = { fg = colors.green },
    TSPunctDelimiter     = { fg = colors.green },
    TSPunctSpecial       = { fg = colors.green },
    TSQueryLinterError   = { fg = colors.green },
    TSRepeat             = { fg = colors.green, style = config.italic_keywords },
    TSString             = { fg = colors.green },
    TSStringEscape       = { fg = colors.green },
    TSStringRegex        = { fg = colors.green },
    TSStrong             = { fg = colors.green },
    TSStructure          = { fg = colors.green },
    TSSymbol             = { fg = colors.green },
    TSTag                = { fg = colors.green },
    TSTagDelimiter       = { fg = colors.green },
    TSText               = { fg = colors.fg },
    TSTitle              = { fg = colors.green, style = 'bold' },
    TSType               = { fg = colors.green },
    TSTypeBuiltin        = { fg = colors.green },
    TSTodo               = { fg = colors.green },
    TSTypeQualifier      = { fg = colors.green },
    TSURI                = { fg = colors.green, style = 'underline' },
    TSUnderline          = { style = 'underline' },
    TSVariable           = { fg = colors.green, style = config.italic_variables  },
    TSVariableBuiltin    = { fg = colors.green, style = config.italic_variables  },
    TSDefine             = { fg = colors.green },
    -----------------------------------------

}

return M
