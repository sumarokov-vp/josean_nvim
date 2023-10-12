return {
  {
    "github/copilot.vim",
    ft = { "python", "sql", "lua" },
    -- lazy = false,
    config = function() -- Mapping tab is already used by NvChad
      -- require("copilot").setup({
      --   panel = {
      --     auto_refresh = false,
      --     keymap = {
      --       accept = "<CR>",
      --       jump_prev = "[[",
      --       jump_next = "]]",
      --       refresh = "gr",
      --       open = "<S-CR>",
      --     },
      --   },
      --   suggestion = {
      --     auto_trigger = true,
      --     keymap = {
      --       accept = "<C-y>",
      --       prev = "<C-[>",
      --       next = "<C-]>",
      --       dismiss = "<M-'>",
      --     },
      --
      --   },
      -- })
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = "";

      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
      -- vim.g.copilot_tab_map = "<leader>ch"
      --
    end,
  },
}
