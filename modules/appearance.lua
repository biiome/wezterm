local M = {}

function M.apply_to_config(config, wezterm)
	-- Fonts
	config.font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
		"Fira Code",
		"Cascadia Code",
		"Consolas",
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
	config.font_size = 15.0
	config.line_height = 1.1

	-- Themes and Colours
	config.color_scheme = "Tokyo Night (Gogh)"
	-- config.window_background_opacity = 0.90
	config.macos_window_background_blur = 30
	config.win_window_background_blur = 30
	config.text_background_opacity = 1.0
	config.bold_brightens_ansi_colors = true

	-- Tab Bar
	config.hide_tab_bar_if_only_one_tab = false
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

	-- Window
	config.window_padding = {
		left = 16,
		right = 16,
		top = 0,
		bottom = 0,
	}
	config.window_decorations = "RESIZE"

	-- Cursor
	config.cursor_blink_rate = 0
end

return M
