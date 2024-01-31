-- Debug adapter plug-in. Debug anything in Neovim
return {
	{
		"mfussenegger/nvim-dap",
	},
	{
		"mfussenegger/nvim-dap-python",
		requires = { "msfussenegger/nvim-dap" },
		config = function()
			require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap" },
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
			vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })
      vim.keymap.set("n", "<leader>db", require("dapui").toggle)
      vim.keymap.set("n", "<F5>", require("dap").continue)
			vim.keymap.set("n", "<F10>", require("dap").step_over)
			vim.keymap.set("n", "<F11>", require("dap").step_into)
			vim.keymap.set("n", "<F12>", require("dap").step_out)
			vim.keymap.set("n", "<leader>b", require("dap").toggle_breakpoint)
		end,
	},
}
