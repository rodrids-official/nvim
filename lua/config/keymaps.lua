-- keymap

local map = vim.keymap.set

map('t', '<Esc>', '<C-\\><C-n>')
map({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
map({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
map({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
map({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
map({ 'n' }, '<A-h>', '<C-w>h')
map({ 'n' }, '<A-j>', '<C-w>j')
map({ 'n' }, '<A-k>', '<C-w>k')
map({ 'n' }, '<A-l>', '<C-w>l')

map("n", "<F5>", ":e<CR>", { desc = "Recargar archivo"})
map("n", "<leader>R", ":checktime<CR>", { desc = "Recargar buffer"})

-- Telescope (buscar archivos, texto, etc)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fF", "<cmd>Telescope find_files cwd=~<cr>", opts)
map("n", "<leader>f/", "<cmd>Telescope find_files cwd=C:\"<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
