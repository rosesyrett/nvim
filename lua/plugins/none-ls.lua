return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- see nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
				null_ls.builtins.formatting.stylua,
        -- For python,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.ruff,
        -- For typescript,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.eslint_d,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
