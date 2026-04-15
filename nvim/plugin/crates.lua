vim.pack.add { src = 'https://github.com/Saecki/crates.nvim' }

vim.api.nvim_create_autocmd('BufEnter', {
	pattern = 'Cargo.toml',
	callback = function(args)
		local bufnr = args.buf
		local crates = require('crates')
		crates.setup {
			lsp = {
				enabled = true,
				actions = true,
				completion = true,
				hover = true,
			},
			completion = {
				crates = {
					enabled = true,
					max_results = 8,
					min_chars = 3,
				},
			},
		}

		vim.keymap.set('n', '<leader>ct', crates.toggle, { desc = 'Crates Toggle', buffer = bufnr })
		vim.keymap.set('n', '<leader>cr', crates.reload, { desc = 'Crates Reload', buffer = bufnr })

		vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, { desc = 'Crates Show Versions', buffer = bufnr })
		vim.keymap.set('n', '<leader>cf', crates.show_features_popup, { desc = 'Crates Show Features', buffer = bufnr })
		vim.keymap.set(
			'n',
			'<leader>cd',
			crates.show_dependencies_popup,
			{ desc = 'Crates Show Dependencies', buffer = bufnr }
		)

		vim.keymap.set('n', '<leader>cu', crates.update_crate, { desc = 'Crates Update Crate', buffer = bufnr })
		vim.keymap.set('v', '<leader>cu', crates.update_crates, { desc = 'Crates Update Crates', buffer = bufnr })
		vim.keymap.set('n', '<leader>ca', crates.update_all_crates, { desc = 'Crates Update All Crates', buffer = bufnr })
		vim.keymap.set('n', '<leader>cU', crates.upgrade_crate, { desc = 'Crates Upgrade Crate', buffer = bufnr })
		vim.keymap.set('v', '<leader>cU', crates.upgrade_crates, { desc = 'Crates Upgrade Crates', buffer = bufnr })
		vim.keymap.set('n', '<leader>cA', crates.upgrade_all_crates, { desc = 'Crates Upgrade All Crates', buffer = bufnr })

		vim.keymap.set(
			'n',
			'<leader>cx',
			crates.expand_plain_crate_to_inline_table,
			{ desc = 'Crates Expand Crate To Table', buffer = bufnr }
		)
		vim.keymap.set(
			'n',
			'<leader>cX',
			crates.extract_crate_into_table,
			{ desc = 'Crates Extract Crate Into Table', buffer = bufnr }
		)

		vim.keymap.set('n', '<leader>cH', crates.open_homepage, { desc = 'Crates Open Homepage', buffer = bufnr })
		vim.keymap.set('n', '<leader>cR', crates.open_repository, { desc = 'Crates Open Repository', buffer = bufnr })
		vim.keymap.set('n', '<leader>cD', crates.open_documentation, { desc = 'Crates Open Documentation', buffer = bufnr })
		vim.keymap.set('n', '<leader>cC', crates.open_crates_io, { desc = 'Crates Open crates.io', buffer = bufnr })
		vim.keymap.set('n', '<leader>cL', crates.open_lib_rs, { desc = 'Open lib.rs', buffer = bufnr })
	end,
})
