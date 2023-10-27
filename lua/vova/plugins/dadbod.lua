return {
  {
    "tpope/vim-dadbod",
    dependencies = {
      "tpope/vim-dotenv",
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    lazy = true,
    ft = { "sql" },
    cmd = { "DB", "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    keys = {
      { "<leader>hu", "<cmd>DBUIToggle<CR>",        desc = "DB UI" },
      { "<leader>ha", "<cmd>DBUIAddConnection<CR>", desc = "DB add connection" },
      { "<leader>hf", "<cmd>DBUIFindBuffer<CR>",    desc = "DB find buffer" },
      { "<leader>he", "<cmd> '<,'>DB<CR>",          desc = "Execute script",   mode = "v" },
    },
    config = function()
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/dadbod_queries"
    end
  },
}
