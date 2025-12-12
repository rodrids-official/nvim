-- options

local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.number = true
opt.relativenumber = false
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.scrolloff = 10
opt.list = true
opt.confirm = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.scrolloff = 10
opt.list = true
opt.confirm = true
opt.statusline = " %F %m%= %y | %{getcwd()} | %l:%c "

vim.g.netrw_liststyle = 3        -- Vista árbol
vim.g.netrw_banner = 0           -- Sin banner
vim.g.netrw_winsize = 25         -- Ancho 25%
vim.g.netrw_browse_split = 4     -- Abrir en ventana anterior
vim.g.netrw_keepdir = 0          -- Sincronizar pwd
