-- init.lua

vim.g.mapleader = ' '

-- vim.cmd('packadd! nohlsearch')

require("config.options")
require("config.keymaps")
require("config.autocmd")
require("utils.helpers")
