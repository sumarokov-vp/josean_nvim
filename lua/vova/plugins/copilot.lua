return {
  {
    "github/copilot.vim",
    ft = { "python", "sql", "lua", "cs" },
    config = function()
      vim.keymap.set("i", "<C-h>", "<Plug>(copilot-next)", { noremap = true })
    end,
  },
}
