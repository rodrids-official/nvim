local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General", { clear = true })
local autoread = augroup("AutoRead", { clear =true })

autocmd("TextYankPost", {
  group = general,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
  desc = "Resaltar texto copiado"
})
autocmd("BufWritePre", {
  group = general,
  pattern = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(save)
  end,
  desc = "Eliminar espacios en blanco al final"
})
autocmd("BufReadPost", {
  group = general,
  pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if line > 1 and line <= vim.fn.line("$") then
      vim.cmd('normal! g`"')
    end
  end,
  desc = "Ir a última posición del cursor"
})
autocmd("VimEnter", {
    group = general,
    callback = function()
        if vim.fn.argc() == 0 then
            vim.cmd("Lexplore")
            vim.cmd("wincmd p")
        end
    end,
})
autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.keymap.set("n", "q", ":close<CR>", { buffer = true })
    end,
})

-- Autorecarga de archivos cuando el cursor cambia
autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
    group = autoread,
    callback = function()
        if vim.fn.mode() ~= 'c' then
            vim.cmd('checktime')
        end
    end,
})

-- Notificación cuando el archivo cambia
autocmd("FileChangedShellPost", {
    group = autoread,
    callback = function()
        vim.notify("Archivo recargado: " .. vim.fn.expand("%"), vim.log.levels.INFO)
    end,
})

-- Mostrar diagnóstico automáticamente al pasar cursor
autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
  end
})
