local wezterm = require("wezterm")
return {
	color_scheme = "Gruvbox Dark",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	use_fancy_tab_bar = false,

	font_size = 13,
	font = wezterm.font_with_fallback({
		"Hack Nerd Font Mono",
		"Hack",
	}),
	keys = {
		{ key = "Enter", mods = "CMD", action = wezterm.action.ToggleFullScreen },
	},
}
