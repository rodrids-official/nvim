local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Funciones personalizadas para atajos
function ChangeBufferDir()
  vim.ui.input({
    prompt = "Seleccionar directorio: ",
    default = vim.fn.expand("~") .. "/",
    completion = "dir",
 }, function(input)
    if input then
      vim.cmd("lcd " .. input)
      print("Directorio local cambiado a: " .. input)
    end
  end)
end

function SaveAsFile()
  vim.ui.input({
    prompt = "Nombre de archivo: ",
    default = vim.fn.expand("%:p"),
    completion = "dir",
  }, function(input)
    if input then
      vim.cmd("w " .. input)
      print("Archivo gurdado como: " .. input)
    end
  end)
end

-- Salir del modo terminal
map('t', '<Esc>', '<C-\\><C-n>')

-- Telescope (buscar archivos, texto, etc)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fF", "<cmd>Telescope find_files cwd=~<cr>", opts)
map("n", "<leader>f/", "<cmd>Telescope find_files cwd=C:\"<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)

-- Guardar archivo ya creado del buffer actual ya creado
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", opts)

-- Guardar como archivo del buffer actual
map({ "n", "i", "v" }, "<C-a>s", SaveAsFile, opts)

-- Cambiar directorio local del buffer actual desde el home
map("n", "<C-o>", ChangeBufferDir, opts)

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts_lsp = { buffer = ev.buf, noremap = true, silent = true }

    map("n", "gd", vim.lsp.buf.definition, opts_lsp)
    map("n", "gr", vim.lsp.buf.references, opts_lsp)
    map("n", "K", vim.lsp.buf.hover, opts_lsp)
    map("n", "gi", vim.lsp.buf.implementation, opts_lsp)

    map("n", "<leader>rn", vim.lsp.buf.rename, opts_lsp)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts_lsp)

    map("n", "[d", vim.diagnostic.goto_prev, opts_lsp)
    map("n", "]d", vim.diagnostic.goto_next, opts_lsp)
  end,
})


