-- ~/.wezterm.lua
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"JetBrainsMono Nerd Font",
	"Fira Code",
})
config.font_rules = {
	{
		font = wezterm.font("JetBrainsMono Nerd Font", {
			bold = true,
		}),
	},
	{
		italic = true,
		font = wezterm.font("JetBrainsMono Nerd Font", {
			italic = true,
		}),
	},
}
config.font_size = 13.0
config.line_height = 1.1

config.color_scheme = "Tokyo Night (Gogh)"

config.window_background_opacity = 0.90
config.macos_window_background_blur = 20
config.text_background_opacity = 1.0

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

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

return config
