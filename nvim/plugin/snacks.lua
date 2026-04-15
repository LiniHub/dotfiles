vim.pack.add { src = 'https://github.com/folke/snacks.nvim/' }

local Snacks = require('snacks')

Snacks.setup {
	bigfile = { enabled = true },
	statuscolumn = { enabled = true },
	quickfile = { enabled = true },
	indent = { enabled = true },
	image = { enabled = true },
	notifier = { enabled = true },
	gitbrowse = { enabled = true },

	dashboard = {
		enabled = true,
		width = 60,
		preset = {
			keys = {
				{ icon = ' ', key = 'ff', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
				{ icon = ' ', key = 'fg', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
				{ icon = ' ', key = 'fp', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
				{ icon = '󰒲 ', key = 'gg', desc = 'Lazygit', action = ':lua Snacks.lazygit()' },
				{ icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
			},
			header = [[
⠀⠀⠀⢀⣴⠎⣵⣾⠋⠍⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⢒⣴⢋⣂⣾⠏⠒⢄⠀
⠀⠀⠀⠚⢷⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣡⣸⣿⠋⡀⠀⠀⠁
⠀⠀⠈⠀⡜⠁⠀⠀⢠⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠈⢿⣿⣿⠂⢄⠀⠀⠀
⠀⠀⠀⢊⡠⠀⠀⢠⡟⡄⡀⠀⢀⠘⡟⡄⠀⠘⡄⠆⠀⠘⣿⣿⣧⢸⠆⠀⠀
⠀⠀⠀⡰⠀⠀⢀⡿⠄⢡⣧⠀⠈⡄⡧⠸⣤⠀⠰⡸⠀⠀⠸⠛⡿⢻⡦⠀⠀
⠀⠀⢀⠁⠀⠀⡞⣘⣀⠈⢯⢆⠀⢣⡇⢀⡈⢦⡀⠡⡄⠀⠀⣶⣧⣾⢱⡀⠀
⠀⠀⠘⠀⠀⢸⡷⠋⢹⣿⡈⢧⡂⠸⣹⠚⠉⣿⣦⣄⣇⠀⠀⣯⣷⣿⠀⡇⠀
⠀⢠⢠⠀⠀⣼⡅⠀⡟⢟⠃⠈⠊⠂⠇⠀⢸⠿⢿⠻⡙⠀⢠⣿⣿⡇⠀⠇⠀
⠀⠁⢸⡀⡀⡿⢳⠀⠈⠉⠀⠀⠀⠀⠀⠀⠈⠒⠊⣸⠁⠀⢸⣿⡿⠇⠀⠀⠀
⠀⠀⠰⣧⡰⠥⣜⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⣧⠃⠀⣼⡏⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡗⣄⠀⠈⠐⠄⡀⠀⠀⠀⠀⠀⠀⡠⡴⡇⠀⣄⣧⠇⣀⢀⠀⠀⠀
⠆⠀⠀⠀⡿⣿⡷⢄⠀⠀⠈⢦⣄⣠⠔⢂⠡⠊⡰⠀⣸⣿⠏⠊⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡇⠏⠃⡑⠁⠀⠀⣰⠅⢾⠉⢀⡠⠺⣡⠞⢋⠏⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡏⢀⠔⠀⠀⠀⢰⠃⢠⢦⣳⡅⠀⠀⠠⠀⡜⡠⣄⣀⠀⠀⠀⠀⠀
⠀⠀⠀⢰⣠⣿⠀⠀⠀⠠⠛⠰⣹⠀⣍⢵⠀⠁⠀⡜⠰⡴⢡⠇⠀⠀⠀⠀⠀]],
		},
		sections = {
			{ section = 'header' },
			{ section = 'keys', gap = 1, padding = 1 },
		},
	},
}

vim.keymap.set('n', '<leader>gg', Snacks.lazygit.open, { desc = 'Open Lazygit' })
vim.keymap.set('n', '<leader>go', Snacks.gitbrowse.open, { desc = 'Browse remote git server' })
