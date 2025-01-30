return {
	"nvim-zh/colorful-winsep.nvim",
	config = true,
	event = { "WinLeave" },
	config = function()
		require("colorful-winsep").setup({
			hi = {
				bg = "#201c2c",
				fg = "#8A00C4",
			},
			-- This plugin will not be activated for filetype in the following table.
			no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest", "NvimTree", "Lazy" },
			-- Symbols for separator lines, the order: horizontal, vertical, top left, top right, bottom left, bottom right.
			symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
			-- #70: https://github.com/nvim-zh/colorful-winsep.nvim/discussions/70
			only_line_seq = false,
			-- Smooth moving switch
			smooth = true,
			exponential_smoothing = true,
			anchor = {
				left = { height = 1, x = -1, y = -1 },
				right = { height = 1, x = -1, y = 0 },
				up = { width = 0, x = -1, y = 0 },
				bottom = { width = 0, x = 1, y = 0 },
			},
			light_pollution = function(lines) end,
		})
	end,
}
