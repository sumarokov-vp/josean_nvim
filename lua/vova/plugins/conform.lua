-- Formatting
return {
  "stevearc/conform.nvim",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "ruff_format", },
        sql = { "sql_formatter" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
      formatters = {
        isort = {
          command = "isort",
          args = { "-" },
          stdin = true,
          import_heading_stdlib = "Standard Library",
          import_heading_thirdparty = "Third Party Stuff",
          import_heading_firstparty = "My Stuff",

          multi_line_output = 5,
          line_length = 60,
          combine_as_imports = "True",
          include_trailing_comma = "True",
          force_grid_wrap = 2,
        },
      }
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function() -- Make prettier
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
