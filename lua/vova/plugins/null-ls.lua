return {
  {
    -- "jose-elias-alvarez/null-ls.nvim",
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      null_ls.setup({
        sources = {
          -- null_ls.builtins.formatting.black,
          -- null_ls.builtins.formatting.uncrustify,
          -- null_ls.builtins.formatting.ruff,
          -- null_ls.builtins.formatting.isort,
          -- null_ls.builtins.formatting.stylua,
          -- null_ls.builtins.formatting.prettier,
          -- null_ls.builtins.formatting.shfmt,
          null_ls.builtins.diagnostics.ruff,
          null_ls.builtins.diagnostics.mypy,
          null_ls.builtins.diagnostics.pylint,
        },

      })
    end,
  },
}
