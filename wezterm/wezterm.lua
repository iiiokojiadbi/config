-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

config.enable_tab_bar = false
config.color_scheme = "GruvboxDark"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 15
config.max_fps = 120
config.window_decorations = "NONE"
config.native_macos_fullscreen_mode = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 5,
	bottom = 0,
}

-- Старт на весь экран
wezterm.on("gui-startup", function(cmd)
   local tab, pane, window = mux.spawn_window(cmd or {})
   window:gui_window():maximize()
end)
-- wezterm.on('gui-attached', function(domain)
--   -- maximize all displayed windows on startup
--   local workspace = mux.get_active_workspace()
--   for _, window in ipairs(mux.all_windows()) do
--     if window:get_workspace() == workspace then
--       window:gui_window():maximize()
--     end
--   end
-- end)

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
    -- action = wezterm.action.maximize
	},
	{
		key = "_",
		mods = "SHIFT|CTRL|ALT",
		action = wezterm.action.InputSelector({
			title = "Выберите тип окна:",
			choices = {
				{
					id = "splitHorizontal",
					label = "горизонтальное окно",
				},
				{
					id = "splitVertical",
					label = "вертикальное окно",
				},
			},
			action = wezterm.action_callback(function(window, pane, id, label)
				if not id then
					wezterm.log_info("Nothing selected")
				elseif id == "splitHorizontal" then
					window:perform_action(wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }), pane)
				else
				end
			end),
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
