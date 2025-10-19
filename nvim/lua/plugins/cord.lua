return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	init = function()
		vim.g.cord_defer_startup = true
	end,
	opts = {},
}
