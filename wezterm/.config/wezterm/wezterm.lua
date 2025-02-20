local wezterm = require("wezterm")
local config = {}

-- Use config builder object if possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Launch Menu
local launch_menu = {}

table.insert(launch_menu, {
	label = "Pwsh",
	args = { "/usr/local/bin/pwsh", "-NoLogo" },
})

config.launch_menu = launch_menu

-- Settings
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 18.0
-- macos_window_background_blur = 30,
-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
-- window_background_image_hsb = {
--  brightness = 0.01,
--  hue = 1.0,
--  saturation = 0.5,
-- },
config.window_background_opacity = 0.9
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = 64,
	bottom = 10,
}
config.scrollback_lines = 15000
config.default_workspace = "main"

-- Keys
-- config.leader = {key = "a", mods = "CTRL", timeout_milliseconds = 1000}
config.keys = {
	-- { key = "f", mods = "CTRL", action = wezterm.action.ToggleFullScreen },
	{ key = "l", mods = "CTRL", action = wezterm.action.ShowLauncher },
}

-- Mouse
config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

-- Tab bar
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.status_update_interval = 1000

return config
