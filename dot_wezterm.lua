-- Pull in the wezterm API
local wezterm = require 'wezterm'

local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

wezterm.on("gui-startup", function() 
	local tab, pane, window = mux.spawn_window{}
	window:gui_window():maximize()
end)

config = {
	color_scheme = 'One Dark (Gogh)',
	font = wezterm.font "FiraCode Nerd Font",
	window_background_opacity = 0.8,
	default_cursor_style = "BlinkingBar",
}


-- and finally, return the configuration to wezterm
return config
