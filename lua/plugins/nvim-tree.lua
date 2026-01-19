return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function on_attach(bufnr)
        local api = require "nvim-tree.api"
        local function opts(desc)
            return { desc= "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set('n', "<C-b>v", api.node.open.vertical, opts("abrir archivo en ventana vertical"))
        vim.keymap.set('n', "<C-b>h", api.node.open.horizontal, opts("abrir archivo en ventana horizontal"))
        vim.keymap.set('n', "<leader>cd", api.tree.change_root_to_node, opts("cambiar a directorio hijo"))
    end

    require("nvim-tree").setup {
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
        on_attach = on_attach
    }
  end,
}
