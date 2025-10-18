return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		explorer = {
			replace_netrw = true,
		},
		picker = {},
		input = {},
		terminal = {
			enabled = true,
			win = {
				position = "float",
				border = "rounded",
				width = math.floor(vim.o.columns * 0.8), -- 80% of editor width
				height = math.floor(vim.o.lines * 0.7), -- 70% of editor height
				title = " 󰆍  Terminal ",
				title_pos = "center",
				footer = " Press <C-\\><C-n> to exit insert mode ",
				footer_pos = "center",
				wo = {
					winblend = 0,
				},
			},
		},
	},
	keys = {
		{
			"<leader>tt",
			function()
				require("snacks").terminal.toggle()
			end,
			desc = "Toggle Floating Terminal",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
	},
}
