return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
      -- require("mason-tool-installer").setup({
      --   ensure_installed = {
      --     "pyright",
      --     "ruff_lsp",
      --   },
      -- })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    -- reqires = {
    --   "neovim/nvim-lspconfig",
    --   "williamboman/mason.nvim",
    -- },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "ruff_lsp",

          -- install manually
          -- "black",
          -- "isort",
        },
      })
    end,
  },

  -- "williamboman/mason.nvim",
  -- dependencies = {
  --   "williamboman/mason-lspconfig.nvim",
  -- },
  -- lazy_load = false,
  -- cmd = {
  --   "Mason",
  -- },
  -- config = function()
  --   -- import mason
  --   local mason = require("mason")
  --
  --   -- import mason-lspconfig
  --   local mason_lspconfig = require("mason-lspconfig")
  --
  --   -- enable mason and configure icons
  --   mason.setup({
  --     ui = {
  --       icons = {
  --         package_installed = "✓",
  --         package_pending = "➜",
  --         package_uninstalled = "✗",
  --       },
  --     },
  --   })

  --   mason_lspconfig.setup({
  --     -- list of servers for mason to install
  --     ensure_installed = {
  --       "black",
  --       "pyright",
  --       "ruff_lsp",
  --     },
  --     -- auto-install configured servers (with lspconfig)
  --     automatic_installation = true, -- not the same as ensure_installed
  --   })
  -- end,
}
