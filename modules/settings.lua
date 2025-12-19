local M = {}

function M.apply_to_config(config, wezterm)
	config.scrollback_lines = 5000
	config.adjust_window_size_when_changing_font_size = false
	config.window_close_confirmation = "NeverPrompt"

	if wezterm.target_triple:find("windows") then
		config.default_prog = { "pwsh.exe", "-NoLogo" }
	end
end

return M
