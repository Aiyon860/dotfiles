return {
	"DrKJeff16/project.nvim",
	version = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"ibhagwan/fzf-lua",
	},
	---@module 'project'

	---@type Project.Config.Options
	opts = {
		--- ---
		---@type ('lsp'|'pattern')[]
		detection_methods = { "pattern" },

		---@type string[]
		patterns = { ".git", ".github", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "composer.json" },

		---@type boolean
		show_hidden = true,
	},
}
