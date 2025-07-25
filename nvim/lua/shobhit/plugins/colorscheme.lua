return {
	-- {
	-- 	"eddyekofo94/gruvbox-flat.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme gruvbox-flat]])
	-- 	end,
	-- },
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme kanagawa-dragon")
	-- 	end,
	-- },
	-- {
	-- 	"AlexvZyl/nordic.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nordic").load()
	-- 	end,
	-- },
	-- {
	-- 	"projekt0n/github-nvim-theme",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require("github-theme").setup({
	-- 			-- ...
	-- 		})
	--
	-- 		vim.cmd("colorscheme github_dark_default")
	-- 	end,
	-- },
	-- {
	-- 	"nyoom-engineering/oxocarbon.nvim",
	-- 	config = function()
	-- 		vim.opt.background = "dark" -- set this to dark or light
	-- 		vim.cmd("colorscheme oxocarbon")
	-- 	end,
	-- },
	--[[ {
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
			vim.cmd("colorscheme carbonfox")
		end,
	}, ]]
	--	{
	--		"polirritmico/monokai-nightasty.nvim",
	--		lazy = false,
	--		priority = 1000,
	--		config = function()
	--			vim.opt.background = "dark" -- default to dark or light style
	--			vim.cmd.colorscheme("monokai-nightasty")
	--		end,
	--	},
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha",
	-- 			transparent_background = false,
	--        color_overrides = {
	--          mocha = {
	--            base = "#201c2c",
	--            mantle = "#201c2c",
	--            crust = "#201c2c",
	--          }
	--        }
	-- 		})
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_enable_italic = true
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
}
