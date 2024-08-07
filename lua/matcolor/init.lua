local util =require("matcolor.util")
local theme = require("matcolor.theme")

vim.o.background = "dark"
vim.g.colors_name = "matcolor"
util.load(theme)
