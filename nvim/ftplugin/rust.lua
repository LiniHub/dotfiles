vim.pack.add { 'https://github.com/mrcjkb/rustaceanvim' }

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set('n', 'gra', function()
	vim.cmd.RustLsp('codeAction')
end, { desc = 'LSP: code action', silent = true, buffer = bufnr })
vim.keymap.set('n', 'K', function()
	vim.cmd.RustLsp { 'hover', 'actions' }
end, { desc = 'LSP: hover', silent = true, buffer = bufnr })
