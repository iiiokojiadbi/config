-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

config.enable_tab_bar = false
config.color_scheme = "GruvboxDark"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
-- and finally, return the configuration to wezterm
return config
