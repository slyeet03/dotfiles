local wezterm = require("wezterm")

return {
	font = wezterm.font("JetBrains Mono", { weight = "Regular", style = "Normal" }),
	font_size = 22.0,
	color_scheme = "Gruvbox Dark",
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.3,
	macos_window_background_blur = 15,
	text_background_opacity = 0.7,
	enable_scroll_bar = false,
	enable_tab_bar = false,
	native_macos_fullscreen_mode = true,

	keys = {
		-- Open vertical split (⌘ + W)
		{
			key = "w",
			mods = "CMD",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},

		-- Open horizontal split (⌘ + Shift + w)
		{
			key = "w",
			mods = "CMD|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},

		-- Close current pane (⌘ + D)
		{
			key = "d",
			mods = "CMD",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
		-- Resize panes
		{ key = "LeftArrow", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Left", 1 }) },
		{ key = "RightArrow", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Right", 1 }) },
		{ key = "UpArrow", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Up", 1 }) },
		{ key = "DownArrow", mods = "CMD|SHIFT", action = wezterm.action.AdjustPaneSize({ "Down", 1 }) },

		-- Maximize/unmaximize current pane
		{
			key = "z",
			mods = "CMD",
			action = wezterm.action.TogglePaneZoomState,
		},
		-- Show tab navigator (list of all tabs)
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ShowTabNavigator,
		},
		-- toffle full screen
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},

		-- Navigate between panes with ⌘ + number
		{ key = "1", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(0) },
		{ key = "2", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(1) },
		{ key = "3", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(2) },
		{ key = "4", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(3) },
		{ key = "5", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(4) },
		{ key = "6", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(5) },
		{ key = "7", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(6) },
		{ key = "8", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(7) },
		{ key = "9", mods = "CMD", action = wezterm.action.ActivatePaneByIndex(8) },
	},
}
