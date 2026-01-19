-- Propiedades globales de Vim personalizadas
vim.g.mapleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Propiedades globales de plugins personalizadas
vim.g.nvim_tree_respect_buf_cwd = 1

require("options")
require("keymaps")
require("autocmd")

-- Cargar Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import = "plugins" } })

