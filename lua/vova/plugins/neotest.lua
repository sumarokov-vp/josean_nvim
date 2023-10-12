return {
  "nvim-neotest/neotest",
  ft = { "python" },
  keys = {
    { "<leader>tt", "<cmd>Neotest run<CR>", desc = "Run test" },
    { "<leader>tf", "<cmd>Neotest run fie<CR>", desc = "Run file" },
    { "<leader>ts", "<cmd>Neotest summary<CR>", desc = "Summary panel" },
    { "<leader>tj", "<cmd>Neotest jump next<CR>", desc = "Next test" },
    { "<leader>to", "<cmd>Neotest output<CR>", desc = "Output hover" },
    { "<leader>tp", "<cmd>Neotest output-panel<CR>", desc = "Output panel" },
    {"<leader>td", function()
      require("dap-python").test_method()
    end, desc = "Debug test"},
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-python",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-python")({
          -- Extra arguments for nvim-dap configuration
          -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
          dap = { justMyCode = false },
          -- Command line arguments for runner
          -- Can also be a function to return dynamic values
          args = { "--log-level", "DEBUG" },
          -- Runner to use. Will use pytest if available by default.
          -- Can be a function to return dynamic value.
          runner = "pytest",
        }),
      },
    })
  end,
}
