return {
	"nvzone/showkeys",
	cmd = "ShowkeysToggle",
	keys = {
		{
			"<leader>st",
			"<cmd>ShowkeysToggle<CR>",
			desc = "Toggle ShowKeys",
		},
	},
	opts = {
		position = "bottom-center",
		show_count = true,
		maxkeys = 5,
	},
}
