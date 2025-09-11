-- ~/.config/wezterm/config_modules/keybinds.lua

local M = {}

function M.apply_to_config(config, wezterm)
	config.leader = {
		key = "a",
		mods = "SUPER",
		timeout_milliseconds = 1000,
	}

	config.keys = {
		-- Panes
		{
			key = "-",
			mods = "SUPER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "/",
			mods = "SUPER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = "SUPER",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},

		-- Pane Navigation
		{
			key = "l",
			mods = "SUPER",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "h",
			mods = "SUPER",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "j",
			mods = "SUPER",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			mods = "SUPER",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},

		-- Tabs
		{
			key = "t",
			mods = "SUPER",
			action = wezterm.action.SpawnTab("CurrentPaneDomain"),
		},

		-- Misc
		-- Ctrl+l to clear terminal (passes the key through)
		{
			key = "l",
			mods = "CTRL",
			action = wezterm.action.SendKey({ key = "l", mods = "CTRL" }),
		},
	}
end

return M
