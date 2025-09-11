local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Load modules
local appearance = require("modules.appearance")
local keybinds = require("modules.keybinds")
local settings = require("modules.settings")

-- Apply module settings to the config
appearance.apply_to_config(config, wezterm)
keybinds.apply_to_config(config, wezterm)
settings.apply_to_config(config, wezterm)

-- Return the final config object
return config
