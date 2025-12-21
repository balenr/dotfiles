local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Launch Menu
local launch_menu = {}

table.insert(launch_menu, {
	label = "Pwsh",
	args = { "/usr/local/bin/pwsh", "-NoLogo" },
})

config.launch_menu = launch_menu

-- Settings
config.color_scheme = "tokyonight_night"
config.font = wezterm.font("RobotoMono Nerd Font Mono")
config.font_size = 16.0
config.macos_window_background_blur = 20
-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
-- window_background_image_hsb = {
--  brightness = 0.01,
--  hue = 1.0,
--  saturation = 0.5,
-- },
config.window_background_opacity = 0.84
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = 64,
	bottom = 10,
}
config.scrollback_lines = 150000
config.default_workspace = "main"

-- Keys
-- config.leader = {key = "a", mods = "CTRL", timeout_milliseconds = 1000}
config.keys = {
	-- { key = "f", mods = "CTRL", action = wezterm.action.ToggleFullScreen },
	{ key = "p", mods = "CTRL", action = wezterm.action.ShowLauncher },
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

quit_when_all_windows_are_closed = false

return config
