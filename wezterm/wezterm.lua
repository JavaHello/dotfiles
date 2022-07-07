local wezterm = require("wezterm")
return {
	color_scheme = "Gruvbox Dark",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	font_size = 13,
	font = wezterm.font_with_fallback({
		"CaskaydiaCove Nerd Font Mono",
		"Cascadia Mono PL",
	}),
	keys = {
		{ key = "n", mods = "SHIFT|CTRL", action = wezterm.action.ToggleFullScreen },
	},
}
