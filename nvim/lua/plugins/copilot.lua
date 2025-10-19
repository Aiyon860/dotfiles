return {
	"zbirenbaum/copilot.lua",
	dependencies = {
		"copilotlsp-nvim/copilot-lsp",
	},
	cmd = "Copilot",
	lazy = true,
	opts = {
		suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = false,
			debounce = 0,
			keymap = { accept = "<C-i>" },
		},
		panel = {
			enabled = true,
			auto_refresh = true,
			keymap = {
				open = "<C-p>",
				accept = "<C-u>",
			},
			layout = {
				position = "right",
				ratio = 0.4,
			},
		},
	},
	keys = {
		{
			"<leader>cp",
			function()
				if require("copilot.client").is_disabled() then
					require("copilot.command").enable()
				else
					require("copilot.command").disable()
				end
			end,
			desc = "Toggle Copilot",
		},
	},
}
