-- Tokyo Night theme for Neovim
-- Converted from Zed theme format
-- Usage: Place this file in ~/.config/nvim/colors/tokyo-night.lua
-- Then use :colorscheme tokyo-night

local M = {}

-- Theme variants
local variants = {
  night = 'night',
  light = 'light',
  storm = 'storm',
}

-- Get the current variant (default to night)
local function get_variant()
  return vim.g.tokyo_night_variant or variants.night
end

-- Color palettes for each variant
local colors = {
  night = {
    -- UI Colors
    bg = '#1a1b26',
    bg_dark = '#16161e',
    bg_highlight = '#1e202e',
    terminal_black = '#363b54',
    fg = '#a9b1d6',
    fg_dark = '#787c99',
    fg_gutter = '#363b54',
    dark3 = '#545c7e',
    comment = '#51597d',
    dark5 = '#737aa2',
    blue0 = '#3d59a1',
    blue = '#7aa2f7',
    cyan = '#7dcfff',
    blue1 = '#2ac3de',
    blue2 = '#0db9d7',
    blue5 = '#89ddff',
    blue6 = '#b4f9f8',
    blue7 = '#394b70',
    purple = '#bb9af7',
    magenta = '#bb9af7',
    magenta2 = '#ff007c',
    red = '#f7768e',
    red1 = '#db4b4b',
    orange = '#ff9e64',
    yellow = '#e0af68',
    green = '#9ece6a',
    green1 = '#73daca',
    green2 = '#41a6b5',
    teal = '#1abc9c',
    -- Git colors
    git_add = '#9ece6a',
    git_change = '#e0af68',
    git_delete = '#f7768e',
    -- Status colors
    error = '#f7768e',
    warning = '#e0af68',
    info = '#0da0ba',
    hint = '#51597d',
  },

  light = {
    -- UI Colors
    bg = '#d5d6db',
    bg_dark = '#cbccd1',
    bg_highlight = '#dcdee3',
    terminal_black = '#0f0f14',
    fg = '#343b58',
    fg_dark = '#4c505e',
    fg_gutter = '#9da0ab',
    dark3 = '#9699a3',
    comment = '#9699a3',
    dark5 = '#828594',
    blue0 = '#34548a',
    blue = '#34548a',
    cyan = '#0f4b6e',
    blue1 = '#166775',
    blue2 = '#0da0ba',
    blue5 = '#4c505e',
    blue6 = '#0f4b6e',
    blue7 = '#9699a3',
    purple = '#5a4a78',
    magenta = '#5a4a78',
    magenta2 = '#8c4351',
    red = '#8c4351',
    red1 = '#8c4351',
    orange = '#965027',
    yellow = '#8f5e15',
    green = '#485e30',
    green1 = '#33635c',
    green2 = '#33635c',
    teal = '#33635c',
    -- Git colors
    git_add = '#485e30',
    git_change = '#8f5e15',
    git_delete = '#8c4351',
    -- Status colors
    error = '#8c4351',
    warning = '#8f5e15',
    info = '#0da0ba',
    hint = '#634f30',
  },

  storm = {
    -- UI Colors
    bg = '#24283b',
    bg_dark = '#1f2335',
    bg_highlight = '#292e42',
    terminal_black = '#414868',
    fg = '#a9b1d6',
    fg_dark = '#7982a9',
    fg_gutter = '#3b4261',
    dark3 = '#545c7e',
    comment = '#5f6996',
    dark5 = '#737aa2',
    blue0 = '#3d59a1',
    blue = '#7aa2f7',
    cyan = '#7dcfff',
    blue1 = '#2ac3de',
    blue2 = '#0db9d7',
    blue5 = '#89ddff',
    blue6 = '#b4f9f8',
    blue7 = '#394b70',
    purple = '#bb9af7',
    magenta = '#bb9af7',
    magenta2 = '#ff007c',
    red = '#f7768e',
    red1 = '#db4b4b',
    orange = '#ff9e64',
    yellow = '#e0af68',
    green = '#9ece6a',
    green1 = '#73daca',
    green2 = '#73daca',
    teal = '#1abc9c',
    -- Git colors
    git_add = '#9ece6a',
    git_change = '#e0af68',
    git_delete = '#f7768e',
    -- Status colors
    error = '#f7768e',
    warning = '#e0af68',
    info = '#0da0ba',
    hint = '#5f6996',
  },
}

-- Apply highlight groups
local function apply_highlights(c)
  local highlights = {
    -- Editor
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_dark },
    FloatBorder = { fg = c.dark3 },
    Cursor = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    ColorColumn = { bg = c.bg_highlight },
    LineNr = { fg = c.fg_gutter },
    CursorLineNr = { fg = c.fg },
    Visual = { bg = c.dark3 },
    VisualNOS = { bg = c.dark3 },
    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { fg = c.bg, bg = c.orange },

    -- Syntax
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.orange },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.orange },
    Boolean = { fg = c.orange },
    Float = { fg = c.orange },
    Identifier = { fg = c.fg },
    Function = { fg = c.blue },
    Statement = { fg = c.purple },
    Conditional = { fg = c.purple },
    Repeat = { fg = c.purple },
    Label = { fg = c.fg },
    Operator = { fg = c.blue5 },
    Keyword = { fg = c.purple },
    Exception = { fg = c.purple },
    PreProc = { fg = c.green1 },
    Include = { fg = c.green1 },
    Define = { fg = c.green1 },
    Macro = { fg = c.green1 },
    PreCondit = { fg = c.green1 },
    Type = { fg = c.blue1 },
    StorageClass = { fg = c.purple },
    Structure = { fg = c.purple },
    Typedef = { fg = c.purple },
    Special = { fg = c.blue5 },
    SpecialChar = { fg = c.purple },
    Tag = { fg = c.red },
    Delimiter = { fg = c.blue5 },
    SpecialComment = { fg = c.comment },
    Debug = { fg = c.orange },

    -- Messages
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },
    ModeMsg = { fg = c.fg_dark },
    MoreMsg = { fg = c.blue },
    Question = { fg = c.blue },

    -- UI Elements
    Pmenu = { fg = c.fg, bg = c.bg_dark },
    PmenuSel = { fg = c.fg, bg = c.dark3 },
    PmenuSbar = { bg = c.dark3 },
    PmenuThumb = { bg = c.fg_gutter },
    StatusLine = { fg = c.fg, bg = c.bg_dark },
    StatusLineNC = { fg = c.fg_dark, bg = c.bg_dark },
    TabLine = { fg = c.fg_dark, bg = c.bg_dark },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.dark3 },
    WinSeparator = { fg = c.dark3 },

    -- Diff
    DiffAdd = { fg = c.git_add },
    DiffChange = { fg = c.git_change },
    DiffDelete = { fg = c.git_delete },
    DiffText = { fg = c.git_change, bg = c.bg_highlight },

    -- Git signs
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },

    -- Diagnostics
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticUnderlineError = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },

    -- LSP
    LspReferenceText = { bg = c.bg_highlight },
    LspReferenceRead = { bg = c.bg_highlight },
    LspReferenceWrite = { bg = c.bg_highlight },

    -- Treesitter
    ['@attribute'] = { fg = c.purple },
    ['@boolean'] = { fg = c.orange },
    ['@character'] = { fg = c.green },
    ['@comment'] = { fg = c.comment, italic = true },
    ['@conditional'] = { fg = c.purple },
    ['@constant'] = { fg = c.orange },
    ['@constant.builtin'] = { fg = c.orange },
    ['@constant.macro'] = { fg = c.orange },
    ['@constructor'] = { fg = c.red },
    ['@exception'] = { fg = c.purple },
    ['@field'] = { fg = c.fg },
    ['@float'] = { fg = c.orange },
    ['@function'] = { fg = c.blue },
    ['@function.builtin'] = { fg = c.blue },
    ['@function.macro'] = { fg = c.blue },
    ['@include'] = { fg = c.green1 },
    ['@keyword'] = { fg = c.purple },
    ['@keyword.function'] = { fg = c.purple },
    ['@keyword.operator'] = { fg = c.purple },
    ['@label'] = { fg = c.fg },
    ['@method'] = { fg = c.blue },
    ['@namespace'] = { fg = c.blue1 },
    ['@number'] = { fg = c.orange },
    ['@operator'] = { fg = c.blue5 },
    ['@parameter'] = { fg = c.fg },
    ['@property'] = { fg = c.fg },
    ['@punctuation.bracket'] = { fg = c.blue5 },
    ['@punctuation.delimiter'] = { fg = c.blue5 },
    ['@punctuation.special'] = { fg = c.blue5 },
    ['@repeat'] = { fg = c.purple },
    ['@string'] = { fg = c.green },
    ['@string.escape'] = { fg = c.purple },
    ['@string.regex'] = { fg = c.green },
    ['@string.special'] = { fg = c.green },
    ['@tag'] = { fg = c.red },
    ['@tag.attribute'] = { fg = c.purple },
    ['@tag.delimiter'] = { fg = c.blue5 },
    ['@text.literal'] = { fg = c.green },
    ['@text.title'] = { fg = c.orange, bold = true },
    ['@text.emphasis'] = { fg = c.red, italic = true },
    ['@text.strong'] = { fg = c.red, bold = true },
    ['@type'] = { fg = c.blue1 },
    ['@type.builtin'] = { fg = c.blue1 },
    ['@variable'] = { fg = c.fg },
    ['@variable.builtin'] = { fg = c.red },

    -- Terminal
    Terminal = { fg = c.fg, bg = c.bg },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

-- Set terminal colors
local function set_terminal_colors(c)
  vim.g.terminal_color_0 = c.terminal_black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.purple
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg_dark
  vim.g.terminal_color_8 = c.terminal_black
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green1
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.purple
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
end

-- Main setup function
function M.setup(opts)
  opts = opts or {}

  -- Set variant
  if opts.variant then
    vim.g.tokyo_night_variant = opts.variant
  end

  -- Clear existing highlights
  vim.cmd 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  -- Set colorscheme name
  vim.g.colors_name = 'tokyo-night'

  -- Get current variant and colors
  local variant = get_variant()
  local c = colors[variant]

  -- Set background
  vim.o.background = (variant == 'light') and 'light' or 'dark'

  -- Apply highlights and terminal colors
  apply_highlights(c)
  set_terminal_colors(c)
end

-- Load the theme
M.setup()

return M
