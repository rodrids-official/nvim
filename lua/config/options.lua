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

-- Definir Powershell como terminal por defecto
opt.shell = "powershell"
opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned Command"
opt.shellquote = ""
opt.shellxquote = ""

-- Autorecarga de archivos
opt.autoread = true

-- Configuración de diagnósticos
vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",  -- Mostrar fuente del error
    header = "",
    prefix = "",
  },
})

vim.o.updatetime = 250  -- Tiempo de espera (ms)
