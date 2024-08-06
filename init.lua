local M = {}

function M.setup()
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true

    vim.g.colors_name = "my_colorscheme"

    -- Define your colors here
    vim.cmd("highlight Normal guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight Comment guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight Identifier guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight Statement guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight PreProc guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight Type guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight Special guifg=#00FF00 guibg=#000000")
    vim.cmd("highlight Underlined guifg=#00FF00 guibg=#000000")
end

return M

