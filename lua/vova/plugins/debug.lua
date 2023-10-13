return {
  {
    "mfussenegger/nvim-dap",
    ft = {"python"},
    keys = {
      {"<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle breakpoint"},
      {"<leader>dc", "<cmd>DapContinue<cr>", desc = "Debug"},
      {"<leader>dt", "<cmd>DapTerminate<cr>", desc = "Terminate Debug"},
      {
        "<leader>dd",
        function()
          require("dap").clear_breakpoints()
        end,
        desc = "Clear breakpoints",
      },
    },
    config = function()
      local set_namespace = vim.api.nvim__set_hl_ns or vim.api.nvim_set_hl_ns
      local namespace = vim.api.nvim_create_namespace("dap-hlng")
      vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939', bg = '#6e3405' })
      vim.api.nvim_set_hl(0, 'DapBreakpointLine', { ctermbg = 0, fg = '#ffffff', bg = '#6e3405' })
      vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = '#61afef', bg = '#6e3405' })
      vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = '#000000', bg = '#98c379' })

      vim.fn.sign_define('DapBreakpoint', { text='⏣', texthl='DapBreakpointLine', linehl='DapBreakpointLine', numhl='DapBreakpointLine' })
      vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
      vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
      vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
      vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' })
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    ft = {"python"},
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },

}
