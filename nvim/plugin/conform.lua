vim.pack.add { src = 'https://github.com/stevearc/conform.nvim' }

local conform = require('conform')

conform.setup {
	formatters_by_ft = {
		lua = { 'stylua' },
		c = { 'clang_format' },
		cpp = { 'clang_format' },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = 'fallback',
	},
}

vim.keymap.set('n', '<leader>fr', function()
	conform.format { lsp_fallback = true }
end, { desc = 'Format buffer' })
