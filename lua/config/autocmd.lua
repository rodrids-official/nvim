-- autocmd

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

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

local general = augroup("General", { clear = true })

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
