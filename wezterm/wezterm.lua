local wezterm = require('wezterm')
-- wezterm.target_triple
-- x86_64-pc-windows-msvc - Windows
-- x86_64-apple-darwin - macOS (Intel)
-- aarch64-apple-darwin - macOS (Apple Silicon)
-- x86_64-unknown-linux-gnu - Linux
local function fonts()
  local font = {
    'CaskaydiaCove NFM',
  }
  if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    table.insert(font, 'Noto Sans Mono CJK SC')
  elseif wezterm.target_triple == 'x86_64-unknown-linux-gnu' then
    table.insert(font, 'Noto Sans Mono CJK SC')
  else
    table.insert(font, 'PingFang SC')
  end
  return font
end
local config = {
  -- window_background_opacity = 0.8,
  color_scheme = 'Gruvbox dark, medium (base16)',
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  -- use_fancy_tab_bar = false,
  enable_tab_bar = false,
  -- TODO: 不生效
  enable_scroll_bar = false,
  window_decorations = 'NONE',
  window_background_opacity = 0.8,
  font_size = 13,
  font = wezterm.font_with_fallback(fonts()),
  keys = {
    { key = 'Enter', mods = 'CMD', action = wezterm.action.ToggleFullScreen },
  },
}
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  config.default_domain = 'WSL:Ubuntu'
end
return config
