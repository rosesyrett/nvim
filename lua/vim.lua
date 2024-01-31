vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.cmd("set expandtab")
vim.cmd("set number")
vim.g.mapleader = " "

-- Debugger keymaps
vim.api.nvim_set_keymap("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakPoint<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", {})
vim.api.nvim_set_keymap(
	"n",
	"<leader>dr",
	":lua require('dapui').open({reset = true})<CR>",
	{ noremap = true }
)
