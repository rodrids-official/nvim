local map = vim.keymap.set
local function opts(desc) return { desc = desc, noremap = true, silent = true } end

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

function ResizeV()
    vim.ui.input({
        prompt = "Nuevo ancho: "
    }, function(input)
        if input then
            vim.cmd("vertical res " .. input)
        end
    end)
end

function ResizeH()
    vim.ui.input({
        prompt = "Nuevo alto: "
    }, function(input)
        if input then
            vim.cmd("res " .. input)
        end
    end)
end

-- Salir del modo terminal
map('t', '<Esc>', '<C-\\><C-n>')

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", opts("Guardar archivo"))
map({ "n", "i", "v" }, "<C-a>s", SaveAsFile, opts("Guardar archivo como"))

map("n", "<C-o>", ChangeBufferDir, opts("Cambiar directorio de trabajo del buffer actual"))

map({ "n", "i", "v", "t"}, "<A-w>v", ResizeV, opts("Redimensionar ancho de ventana"))
map({ "n", "i", "v", "t"}, "<A-w>h", ResizeH, opts("Redimensionar alto de ventana"))

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts("Telescope: navegar entre archivos del buffer actual"))
map("n", "<leader>fF", "<cmd>Telescope find_files cwd=~<cr>", opts("Telescope: navegar entre archivos del home de usuario"))
map("n", "<leader>f/", "<cmd>Telescope find_files cwd=C:\"<cr>", opts("Telescope: navegar entre archivos de la raíz del sistema"))
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts("Telescope: buscar coincidencias en archivos del buffer acutal"))
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts("Telescope: navegar entre buffers"))

-- LSP
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

-- NvimTree
map({ "n", "i", "v" }, "<C-B>", "<cmd>NvimTreeOpen<cr>", opts("NvimTree: abrir árbol"))
map({ "n", "i", "v" }, "<C-B>q", "<cmd>NvimTreeClose<cr>", opts("NvimTree: cerra árbol"))

