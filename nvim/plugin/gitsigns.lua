vim.pack.add { src = 'https://github.com/lewis6991/gitsigns.nvim' }

require('gitsigns').setup {
	current_line_blame = true,
	current_line_blame_opts = {
		ignore_whitespace = true,
		delay = 0,
	},
}
