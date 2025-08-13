-- ~/.wezterm.lua
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"JetBrainsMono Nerd Font",
	"Fira Code",
})
config.font_rules = {
	{
		intensity = "Bold",
		font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
	},
	{
		italic = true,
		font = wezterm.font("JetBrainsMono Nerd Font", { italic = true }),
	},
}
config.font_size = 13.0
config.line_height = 1.1

-- Themes
config.color_scheme = "Tokyo Night (Gogh)"
config.window_background_opacity = 0.90
config.text_background_opacity = 1.0
config.macos_window_background_blur = 20
config.bold_brightens_ansi_colors = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.colors = {
	tab_bar = {
		background = "#1a1b26", -- overall tab bar background

		active_tab = {
			bg_color = "#7aa2f7", -- active tab background
			fg_color = "#1a1b26", -- active tab text
			intensity = "Bold",
		},

		inactive_tab = {
			bg_color = "#1f2335",
			fg_color = "#c0caf5",
		},

		inactive_tab_hover = {
			bg_color = "#2a2e42",
			fg_color = "#7aa2f7",
			italic = true,
		},

		new_tab = {
			bg_color = "#1f2335",
			fg_color = "#c0caf5",
		},

		new_tab_hover = {
			bg_color = "#2a2e42",
			fg_color = "#7aa2f7",
			italic = true,
		},
	},
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.cursor_blink_rate = 0

-- Smooth scrolling & keybind tweaks
config.scrollback_lines = 5000
config.adjust_window_size_when_changing_font_size = false

-- New keybinds
config.leader = {
	key = "a",
	mods = "CTRL",
	timeout_milliseconds = 1000,
}
config.keys = {
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "/",
		mods = "CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "t",
		mods = "CTRL",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "n",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "l",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "h",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},

	-- Ctrl+w to close pane with confirmation
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},

	-- Super+l to clear terminal
	{
		key = "l",
		mods = "SUPER",
		action = wezterm.action.SendKey({ key = "l", mods = "CTRL" }),
	},
}

return config
