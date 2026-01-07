-- ~\AppData\Local\nvim\lua\plugins\essentials.lua

return {
  -- Telescope: fuzzy finder (IMPRESCINDIBLE)
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{}
    end
  },

  -- Treesitter: syntax highlighting avanzado
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
      if not status_ok then
        return
      end

      treesitter.setup {
        ensure_installed = { "lua", "vim", "javascript", "typescript", "html", "css", "c_sharp" },
        highlight = { enable = true },
      }
    end
  },

  -- Which-key: muestra atajos disponibles
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    config = function()
      require("which-key").setup{}
    end
  },

  -- Mejores movimientos con s/S (opcional pero útil)
  { 'ggandor/leap.nvim' },

}
