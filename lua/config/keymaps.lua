-- keymaps

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('t', '<Esc>', '<C-\\><C-n>')
map({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
map({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
map({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
map({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
map({ 'n' }, '<A-h>', '<C-w>h')
map({ 'n' }, '<A-j>', '<C-w>j')
map({ 'n' }, '<A-k>', '<C-w>k')
map({ 'n' }, '<A-l>', '<C-w>l')


map("n", "<F5>", ":e<CR>", opts)
map("n", "<leader>R", ":checktime<CR>", opts)

-- Telescope (buscar archivos, texto, etc)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fF", "<cmd>Telescope find_files cwd=~<cr>", opts)
map("n", "<leader>f/", "<cmd>Telescope find_files cwd=C:\"<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)

-- Guardar archivo en cualquier modo con Ctrl + s
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>", opts)
map("v", "<C-s>", "<Esc>:w<CR>", opts)

-- LSP maps (añadir después de tener LSP activo)
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts_lsp = { buffer = ev.buf, noremap = true, silent = true }

    -- Navegación
    map("n", "gd", vim.lsp.buf.definition, opts_lsp)       -- Ir a definición
    map("n", "gr", vim.lsp.buf.references, opts_lsp)       -- Ver referencias
    map("n", "K", vim.lsp.buf.hover, opts_lsp)             -- Documentación
    map("n", "gi", vim.lsp.buf.implementation, opts_lsp)   -- Ir a implementación

    -- Acciones
    map("n", "<leader>rn", vim.lsp.buf.rename, opts_lsp)   -- Renombrar
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts_lsp) -- Code actions

    -- Diagnósticos
    map("n", "[d", vim.diagnostic.goto_prev, opts_lsp)     -- Error anterior
    map("n", "]d", vim.diagnostic.goto_next, opts_lsp)     -- Error siguiente
    map("n", "<leader>e", vim.diagnostic.open_float, opts_lsp) -- Mostrar error
  end,
})
