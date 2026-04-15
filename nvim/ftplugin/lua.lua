vim.pack.add { src = 'https://github.com/folke/lazydev.nvim' }

require('lazydev').setup {
	watch = 'lua',
	commands = true,
	auto_reload = true,
}

local config = {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			workspace = {
				preloadFileSize = 10000,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
}

vim.lsp.config('lua_ls', config)
