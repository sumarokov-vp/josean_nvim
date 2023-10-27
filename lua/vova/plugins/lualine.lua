return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<Tab>", "<cmd>bnext<cr>", desc = "Next buffer" },
    { "<S-Tab>", "<cmd>bprevious<cr>", desc = "Next buffer" },
    { "<leader>x", "<cmd>bd<cr>", desc = "Close buffer" },
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        theme = "gruvbox-material",
      },
      sections = {
        lualine_a = {
          { "searchcount" },
          { "buffers" },
        },
        lualine_b = { "branch", "diff" },
        lualine_c = { "diagnotics" },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          -- { "encoding" },
          -- { "fileformat" },
          { "filetype" },
        },
        lualine_y = { "progress" },
        lualine_z = { "selectioncount", "location" },
      },
    })
  end,
}
