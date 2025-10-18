return {
	"folke/which-key.nvim",
	event = "VeryLazy", -- make sure all of the other plugins loaded first (to get their keymaps properly
	opts = {
		preset = "modern",
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
