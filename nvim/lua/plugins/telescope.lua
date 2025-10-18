return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		local map = vim.keymap.set

		-- Parent Pickers (all pickers options available)
		map("n", "<leader>fap", builtin.builtin, { desc = "Telescope all pickers" })

		-- File Pickers
		map("n", "<leader>ff", function()
			builtin.find_files({
				find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
			})
		end, { desc = "Telescope find files", noremap = true })

		map("n", "<leader>fn", function()
			builtin.find_files({
				prompt_title = "Neovim Config Files",
				cwd = vim.fn.stdpath("config"), -- This points to ~/.config/nvim by default
				find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
			})
		end, { desc = "Search Neovim config files", noremap = true })

		map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep", noremap = true })
		map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers", noremap = true })
		map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags", noremap = true })

		-- Grep
		map({ "n", "v" }, "<leader>gs", builtin.grep_string, { desc = "Telescope grep string", noremap = true })
		map("n", "<leader>gn", function()
			builtin.live_grep({ cwd = vim.fn.stdpath("config"), prompt_title = "Grep Neovim Config" })
		end, { desc = "Search text in Neovim config", noremap = true })

		-- Vim Pickers
		map("n", "<leader>fr", builtin.oldfiles, { desc = "[R]ecently opened files", noremap = true })
		map("n", "<leader>fc", builtin.commands, { desc = "Show available [c]ommands", noremap = true })
		map("n", "<leader>fm", builtin.marks, { desc = "Show [m]arks", noremap = true })
		map("n", "<leader>fk", builtin.keymaps, { desc = "Show [k]eymaps", noremap = true })
		map("n", "<leader>fq", builtin.quickfix, { desc = "[Q]uickfix list", noremap = true })
		map("n", "<leader>ht", builtin.help_tags, { desc = "Show available [h]elp [t]ags", noremap = true })
		map("n", "<leader>mp", builtin.man_pages, { desc = "Show [m]an[p]age entries", noremap = true })
		map("n", "<leader>re", builtin.resume, { desc = "[Re]sume previous picker results", noremap = true })
		map("n", "<leader>pi", builtin.pickers, { desc = "Show previous [pi]cker results", noremap = true })
	end,
	keys = {
		-- Project Picker (project.nvim)
		{ "<leader>fp", "<cmd>Telescope projects<CR>", desc = "Find Projects", noremap = true },
	},
}
