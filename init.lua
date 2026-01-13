-- init.lua

vim.g.mapleader = ' '

require("config.options")
require("config.keymaps")
require("config.autocmd")
require("config.lazy")
require("utils.helpers")

vim.cmd('packadd! nohlsearch')
vim.cmd('colorscheme material-darker')
