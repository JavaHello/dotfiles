local wezterm = require("wezterm")
return {
	color_scheme = "Gruvbox Dark",

	font_size = 13,
	font = wezterm.font_with_fallback({
		"CaskaydiaCove Nerd Font Mono",
		"Cascadia Mono PL",
	}),
}
