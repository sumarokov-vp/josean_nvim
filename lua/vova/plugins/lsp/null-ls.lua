return {
  "jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
  ft = {"python",},
  -- event = { "BufReadPre", "BufNewFile" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.diagnostics.ruff,
        nls.builtins.diagnostics.mypy,
      },
    }
  end,
}
