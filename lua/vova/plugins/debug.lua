return {
  {
    "mfussenegger/nvim-dap",
    ft = {"python"},
    -- config = function(_, opts)
    --   -- require("core.utils").load_mappings("dap")
    --   --
    -- end,
    keys = {
      {"<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle breakpoint"},
      {"<leader>dc", "<cmd>DapContinue<cr>", desc = "Debug"},
      {"<leader>dt", "<cmd>DapTerminate<cr>", desc = "Terminate Debug"},
    }
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
      -- require("core.utils").load_mappings("dap_python")
    end,
  },

}
