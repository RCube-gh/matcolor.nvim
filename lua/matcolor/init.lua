local o = vim.o
local g = vim.g
local cmd = vim.cmd
local nvim_set_hl = vim.api.nvim_set_hl
local tbl_deep_extend = vim.tbl_deep_extend

---@class matcolorConfig
---@field italic_comment boolean
---@field transparent_bg boolean
---@field show_end_of_buffer boolean
---@field lualine_bg_color string?
---@field colors Palette
---@field theme string?
---@field overrides HighlightGroups | fun(colors: Palette): HighlightGroups
local DEFAULT_CONFIG = {
   italic_comment = false,
   transparent_bg = false,
   show_end_of_buffer = false,
   lualine_bg_color = nil,
   colors = require("matcolor.palette"),
   overrides = {},
   theme = 'matcolor'
}

local TRANSPARENTS = {
   "Normal",
   "SignColumn",
   "NvimTreeNormal",
   "NvimTreeVertSplit",
   "NeoTreeNormal",
   "NeoTreeNormalNC"
}

local function apply_term_colors(colors)
   g.terminal_color_0 = colors.black
   g.terminal_color_1 = colors.green
   g.terminal_color_2 = colors.green
   g.terminal_color_3 = colors.green
   g.terminal_color_4 = colors.green
   g.terminal_color_5 = colors.green
   g.terminal_color_6 = colors.green
   g.terminal_color_7 = colors.green
   g.terminal_color_8 = colors.selection
   g.terminal_color_9 = colors.green
   g.terminal_color_10 = colors.green
   g.terminal_color_11 = colors.green
   g.terminal_color_12 = colors.green
   g.terminal_color_13 = colors.green
   g.terminal_color_14 = colors.green
   g.terminal_color_15 = colors.green
   g.terminal_color_background = colors.bg
   g.terminal_color_foreground = colors.fg
end

--- override colors with colors
---@param groups HighlightGroups
---@param overrides HighlightGroups
---@return HighlightGroups
local function override_groups(groups, overrides)
   for group, setting in pairs(overrides) do
      groups[group] = setting
   end
   return groups
end

---apply matcolor colorscheme
---@param configs matcolorConfig
local function apply(configs)
   local colors = configs.colors
   apply_term_colors(colors)
   local groups = require("matcolor.groups").setup(configs)

   -- apply transparents
   if configs.transparent_bg then
      for _, group in ipairs(TRANSPARENTS) do
         groups[group].bg = nil
      end
   end

   if type(configs.overrides) == "table" then
      groups = override_groups(groups, configs.overrides --[[@as HighlightGroups]])
   elseif type(configs.overrides) == "function" then
      groups = override_groups(groups, configs.overrides(colors))
   end

   -- set defined highlights
   for group, setting in pairs(groups) do
      nvim_set_hl(0, group, setting)
   end
end

---@type matcolorConfig
local user_configs = {}

--- get matcolor configs
---@return matcolorConfig
local function get_configs()
   local configs = DEFAULT_CONFIG

   if g.colors_name == 'matcolor-soft' then
      configs.theme = 'matcolor-soft'
      configs.colors = require('matcolor.palette-soft')
   elseif g.colors_name == 'matcolor' then
      configs.theme = 'matcolor'
      configs.colors = require('matcolor.palette')
   end

   configs = tbl_deep_extend("force", configs, user_configs)

   return configs
end

---setup matcolor colorscheme
---@param configs matcolorConfig?
local function setup(configs)
   if type(configs) == "table" then
      user_configs = configs --[[@as matcolorConfig]]
   end
end

---load matcolor colorscheme
---@param theme string?
local function load(theme)
   if vim.fn.has("nvim-0.7") ~= 1 then
      vim.notify("matcolor.nvim: you must use neovim 0.7 or higher")
      return
   end

   -- reset colors
   if g.colors_name then
      cmd("hi clear")
   end

   if vim.fn.exists("syntax_on") then
      cmd("syntax reset")
   end

   o.background = "dark"
   o.termguicolors = true
   g.colors_name = theme or 'matcolor'

   apply(get_configs())
end

return {
   load = load,
   setup = setup,
   configs = get_configs,
   colors = function() return get_configs().colors end,
}
