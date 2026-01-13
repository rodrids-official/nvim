-- ~\AppData\Local\nvim\lua\plugins\lsp.lua
return {
  -- Mason: gestor de LSP servers
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  -- Mason-lspconfig: bridge entre mason y lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",        -- Lua
          "ts_ls",         -- TypeScript/JavaScript
          "html",          -- HTML
          "cssls",         -- CSS
          "omnisharp",     -- C#
          "sqlls",         -- SQL
          "powershell_es", -- PowerShell
        },
        automatic_installation = true,
      })
    end
  },

  -- LSPConfig: configuración de LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")
      local mason_registry = require("mason-registry")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } }
          }
        }
      })

      -- HTML
      lspconfig.html.setup({ capabilities = capabilities })

      -- CSS
      lspconfig.cssls.setup({ capabilities = capabilities })

      -- C#
      lspconfig.omnisharp.setup({
         capabilities = capabilities,
         cmd = {
            "dotnet",
            vim.fn.stdpath("data") .. "/mason/packages/omnisharp/libexec/OmniSharp.dll"
          },
          enable_editorconfig_support = true,
          enable_ms_build_load_projects_on_demand = false,
          enable_roslyn_analyzers = true,
          organize_imports_on_format = true,
          enable_import_completion = true,
      })

      -- SQL
      lspconfig.sqlls.setup({ capabilities = capabilities })

      -- PowerShell
      lspconfig.powershell_es.setup({
        capabilities = capabilities,
      })

      -- PHP
      lspconfig.phpactor.setup({ capabilities = capabilities })
      lspconfig.intelephense.setup({ capabilities = capabilities })

      -- JSON
      lspconfig.jsonls.setup({ capabilities = capabilities })

      -- TypeScript/JavaScript
      local ts_config = {
          capabilities = capabilities,
          filetypes = { "typescript", "javascript", "vue" }
      }

      -- Configurar soporte para Vue solo si el paquete está instalado
     -- if mason_registry.is_installed("vue-language-server") then
     --     local vue_language_server = mason_registry.get_package("vue-language-server"):get_install_path() .. "/node_modules/@vue/language_server"
     --     ts_config.init_options = {
     --         plugins = {
     --             {
     --                 name = "@vue/typescript-plugin",
     --                 location = vue_language_server,
     --                 languages = { "vue" }
     --             }
     --         }
     --     }
     -- end

      lspconfig.ts_ls.setup(ts_config)
    end
  },

  -- nvim-cmp: motor de autocompletado
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",     -- LSP source
      "hrsh7th/cmp-buffer",       -- Buffer source
      "hrsh7th/cmp-path",         -- Path source
      "L3MON4D3/LuaSnip",         -- Snippet engine
      "saadparwaiz1/cmp_luasnip", -- Snippet source
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end
  },
}
