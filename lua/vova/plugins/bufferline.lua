return {
  "akinsho/bufferline.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      -- mode = "tabs",
      separator_style = "slant",
      diagnostics = "nvim_lsp",
    },
  },
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Next buffer" },
    { "<leader>x", "<cmd>bd<cr>", desc = "Close buffer" },
  },
}
