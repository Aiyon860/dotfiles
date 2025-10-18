return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "tokyonight",
			},
			sections = {
				lualine_x = {
					{
						"copilot",
						symbols = {
							status = {
								icons = {
									enabled = " ",
									sleep = " ",
									disabled = " ",
									warning = " ",
									unknown = " ",
								},
								hl = {
									enabled = "#50FA7B",
									sleep = "#AEB7D0",
									disabled = "#6272A4",
									warning = "#FFB86C",
									unknown = "#FF5555",
								},
							},
							spinners = "dots",
							spinner_color = "#6272A4",
						},
						show_colors = true,
						show_loading = true,
					},
					"encoding",
					"fileformat",
					"filetype",
				},
			},
		})
	end,
}
