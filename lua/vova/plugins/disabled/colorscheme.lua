return {
  {
    "bluz71/vim-nightfly-guicolors",
    enable = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    enable = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark" -- or "light" for light mode
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "",  -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
    end,
  },
}
