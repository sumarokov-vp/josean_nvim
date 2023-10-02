-- WhichKey is a lua plugin for Neovim 1.5 that displays a popup with possible key bindings of the command you started typing.
-- https://github.com/folke/which-key.nvim
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
    local wk = require("which-key")
    wk.register({
      ["<leader>f"] = { name = "Telescope find" },
      ["<leader>h"] = { name = "Database" },
      ["<leader>e"] = { name = "Files Tree" },
      ["<leader>r"] = { name = "REST" },
      ["<leader>s"] = { name = "Windows operations" },
      ["<leader>t"] = { name = "Neo Test" },
    })
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
