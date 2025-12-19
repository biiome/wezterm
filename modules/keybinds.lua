-- ~/.config/wezterm/config_modules/keybinds.lua

local M = {}

function M.apply_to_config(config, wezterm)
	local mod = "SUPER"
	if wezterm.target_triple:find("windows") then
		mod = "ALT"
	end

	config.leader = {
		key = "a",
		mods = mod,
		timeout_milliseconds = 1000,
	}

	config.keys = {
		-- Panes
		{
			key = "-",
			mods = mod,
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "/",
			mods = mod,
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = mod,
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},

		-- Pane Navigation
		{
			key = "l",
			mods = mod,
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "h",
			mods = mod,
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "j",
			mods = mod,
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			mods = mod,
			action = wezterm.action.ActivatePaneDirection("Up"),
		},

		-- Tabs
		{
			key = "t",
			mods = mod,
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
