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
map("n", "<leader>e", ":Lexplore<CR>", { desc = "Toggle explorador" })
map("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { desc = "Cambiar al dir del archivo" })
