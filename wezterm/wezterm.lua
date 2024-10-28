-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16

config.enable_tab_bar = false
config.color_scheme = "GruvboxDark"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20

config.window_padding = {
	left = 0,
	right = 0,
	top = 10,
	bottom = 0,
}

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}
-- and finally, return the configuration to wezterm
return config
