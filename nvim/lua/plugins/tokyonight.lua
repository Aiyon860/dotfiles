return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			transparent = true,
			lualine_bold = true,
		})
		vim.cmd("colorscheme tokyonight-storm")
	end,
}
