-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- disable module
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  --  	{"folke/which-key.nvim",enabled = false},
  { "folke/flash.nvim", enabled = false },
  --{"folke/neodev.nvim",enabled = false},
  --{ "folke/trouble.nvim", enabled = false },
  { "dstein64/vim-startuptime", enabled = false },
  { "RRethy/vim-illuminate", enabled = false },
  
  -- close virtual_text
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },

 
  -- add symbols-outline
  --{
  --  "simrat39/symbols-outline.nvim",
  --  cmd = "SymbolsOutline",
  --  keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  --  config = true,
  --},

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "json",
        "lua",
        "python",
      },
    },
  },
  
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "pyright",
        "lua-language-server",
        "json-lsp",
      },
    },
  },


  -- config nvim-tree
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --     dependencies = {'nvim-tree/nvim-web-devicons'},
  --     config = function()
  --       require("nvim-tree").setup({
  --       actions = {
  --         open_file = {
  --           quit_on_open = true,
  --         },
  --       },
  --     })
  --     end,
  -- },
}
