local wezterm = require('wezterm')
return {
  color_scheme = 'Gruvbox Dark',
  -- color_scheme = "gruvbox_material_dark_hard",
  color_schemes = {
    ['gruvbox_material_dark_hard'] = {
      foreground = '#D4BE98',
      background = '#1D2021',
      cursor_bg = '#D4BE98',
      cursor_border = '#D4BE98',
      cursor_fg = '#1D2021',
      selection_bg = '#D4BE98',
      selection_fg = '#3C3836',

      ansi = {
        '#1d2021',
        '#ea6962',
        '#a9b665',
        '#d8a657',
        '#7daea3',
        '#d3869b',
        '#89b482',
        '#d4be98',
      },
      brights = {
        '#eddeb5',
        '#ea6962',
        '#a9b665',
        '#d8a657',
        '#7daea3',
        '#d3869b',
        '#89b482',
        '#d4be98',
      },
    },
  },
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  -- use_fancy_tab_bar = false,
  enable_tab_bar = false,
  -- window_decorations = 'NONE',

  font_size = 13,
  font = wezterm.font_with_fallback({
    'Hack Nerd Font Mono',
    'Hack',
  }),
  keys = {
    { key = 'Enter', mods = 'CMD', action = wezterm.action.ToggleFullScreen },
  },
}
