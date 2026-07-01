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
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	lazy = false,
	-- 	config = function()
	-- 		vim.g.gruvbox_material_background = "soft" -- or "medium"
	-- 		vim.g.gruvbox_material_enable_transparent_background = 1
	-- 		vim.cmd.colorscheme("gruvbox-material")
	-- 	end,
	-- },
	--[[ {
		"EdenEast/nightfox.nvim",
		lazy = false,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
					terminal_colors = true,
					dim_inactive = true,
				},
			})
			vim.cmd("colorscheme nightfox")
		end,
	}, ]]
	-- {
	-- 	"Tsuzat/NeoSolarized.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		vim.cmd([[ colorscheme NeoSolarized ]])
	-- 	end,
	-- },
	-- {
	-- 	"loctvl842/monokai-pro.nvim",
	-- 	config = function()
	-- 		require("monokai-pro").setup({
	-- 			transparent_background = true,
	-- 			terminal_colors = true,
	-- 			devicons = true,
	-- 			filter = "spectrum",
	-- 			background_clear = {
	-- 				"toggleterm",
	-- 				"telescope",
	-- 				"which-key",
	-- 				"nvim-tree",
	-- 				"bufferline",
	-- 			},
	-- 			plugins = {
	-- 				bufferline = {
	-- 					underline_selected = false,
	-- 					underline_visible = false,
	-- 				},
	-- 				indent_blankline = {
	-- 					context_highlight = "pro", -- default | pro
	-- 					context_start_underline = false,
	-- 				},
	-- 			},
	-- 		})
	-- 		vim.cmd([[colorscheme monokai-pro]])
	-- 	end,
	-- },
	-- {
	-- 	"savq/melange-nvim",
	-- 	config = function()
	-- 		vim.cmd([[melange]])
	-- 	end,
	-- },
	-- {
	-- 	"vague-theme/vague.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other plugins
	-- 	config = function()
	-- 		-- NOTE: you do not need to call setup if you don't want to.
	-- 		require("vague").setup({
	-- 			-- optional configuration here
	-- 		})
	-- 		vim.cmd("colorscheme vague")
	-- 	end,
	-- },
	-- {
	-- 	"oskarnurm/koda.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require("koda").setup({ transparent = true })
	-- 		vim.cmd("colorscheme koda")
	-- 	end,
	-- },
	-- {
	-- 	"mcauley-penney/techbase.nvim",
	-- 	config = function(_, opts)
	-- 		vim.cmd.colorscheme("techbase")
	-- 	end,
	-- 	priority = 1000,
	-- },
	{
		"Kaikacy/Lemons.nvim",
		version = "*", -- for stable release
		-- if you want to use renaissance brach (make sure to check out it's readme as some things are different)
		-- branch = "renaissance"
		lazy = false,
		priority = 1000,
		config = function()
			require("lemons").setup({
				-- options (see #configuration)
			})
			vim.cmd.colorscheme("lemons")
			vim.api.nvim_create_autocmd("ColorScheme", {
				callback = function()
					vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#7aa2f7" })
					vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = "#c0caf5" })
				end,
			})
		end,
	},
	-- {
	-- 	"webhooked/kanso.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("kanso").setup({
	-- 			bold = true, -- enable bold fonts
	-- 			italics = true, -- enable italics
	-- 			compile = false, -- enable compiling the colorscheme
	-- 			undercurl = true, -- enable undercurls
	-- 			commentStyle = { italic = true },
	-- 			functionStyle = {},
	-- 			keywordStyle = { italic = true },
	-- 			statementStyle = {},
	-- 			typeStyle = {},
	-- 			transparent = false, -- do not set background color
	-- 			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	-- 			terminalColors = true, -- define vim.g.terminal_color_{0,17}
	-- 			colors = { -- add/modify theme and palette colors
	-- 				palette = {},
	-- 				theme = { zen = {}, pearl = {}, ink = {}, all = {} },
	-- 			},
	-- 			overrides = function(colors) -- add/modify highlights
	-- 				return {}
	-- 			end,
	-- 			background = { -- map the value of 'background' option to a theme
	-- 				dark = "zen", -- try "zen", "mist" or "pearl" !
	-- 				light = "pearl", -- try "zen", "mist" or "ink" !
	-- 			},
	-- 			foreground = "default", -- "default" or "saturated" (can also be a table like background)
	-- 			minimal = false, -- reduced color palette for a more minimal look
	-- 		})
	--
	-- 		-- setup must be called before loading
	-- 		vim.cmd("colorscheme kanso")
	-- 	end,
	-- },
	-- {
	-- 	"ember-theme/nvim",
	-- 	name = "ember",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("ember").setup({
	-- 			variant = "ember-soft", -- "ember" | "ember-soft" | "ember-light"
	-- 			styles = {
	-- 				comments = { italic = true },
	-- 				keywords = { bold = true },
	-- 				functions = {},
	-- 				types = { bold = true },
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme ember")
	-- 	end,
	-- },
}
