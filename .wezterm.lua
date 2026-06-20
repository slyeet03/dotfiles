local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Session management plugins
local resurrect = wezterm.plugin.require("https://github.com/MLFlexer/resurrect.wezterm")
local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")

-- Auto-save every 5 minutes so you never lose a layout
resurrect.state_manager.periodic_save({
	interval_seconds = 300,
	save_workspaces = true,
	save_windows = true,
	save_tabs = true,
})

return {
	font = wezterm.font("JetBrains Mono", { weight = "Regular", style = "Normal" }),
	font_size = 22.0,
	color_scheme = "Gruvbox Dark",
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 1.0,
	macos_window_background_blur = 10,
	text_background_opacity = 1.0,
	enable_scroll_bar = false,
	enable_tab_bar = true,
	native_macos_fullscreen_mode = true,
	tab_bar_at_bottom = true,
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

		-- === Session management ===

		-- ⌘ + S: manually save current workspace state
		{
			key = "s",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				resurrect.state_manager.save_state(resurrect.workspace_state.get_workspace_state())
			end),
		},

		-- ⌘ + R: fuzzy-load a saved workspace/window/tab state
		{
			key = "r",
			mods = "CMD",
			action = wezterm.action_callback(function(win, pane)
				resurrect.fuzzy_loader.fuzzy_load(win, pane, function(id, label)
					local type = string.match(id, "^([^/]+)")
					id = string.match(id, "([^/]+)$")
					id = string.match(id, "(.+)%..+$")
					local opts = {
						relative = true,
						restore_text = true,
						on_pane_restore = resurrect.tab_state.default_on_pane_restore,
					}
					if type == "workspace" then
						local state = resurrect.state_manager.load_state(id, "workspace")
						resurrect.workspace_state.restore_workspace(state, opts)
					elseif type == "window" then
						local state = resurrect.state_manager.load_state(id, "window")
						resurrect.window_state.restore_window(pane:window(), state, opts)
					elseif type == "tab" then
						local state = resurrect.state_manager.load_state(id, "tab")
						resurrect.tab_state.restore_tab(pane:tab(), state, opts)
					end
				end)
			end),
		},

		-- ⌘ + O: fuzzy switch between workspaces (zoxide-powered)
		{
			key = "o",
			mods = "CMD",
			action = workspace_switcher.switch_workspace(),
		},

		-- ⌘ + Shift + O: jump back to previous workspace
		{
			key = "o",
			mods = "CMD|SHIFT",
			action = workspace_switcher.switch_to_prev_workspace(),
		},

		{
			key = "r",
			mods = "CMD|SHIFT",
			action = wezterm.action.PromptInputLine({
				description = "Rename workspace",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						wezterm.mux.rename_workspace(wezterm.mux.get_active_workspace(), line)
					end
				end),
			}),
		},
	},
}
