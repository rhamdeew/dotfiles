local wezterm = require 'wezterm'
return {
  font = wezterm.font('JetBrains Mono'),
  font_size = 13,
  color_scheme = "OneDark (base16)",
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,
  window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 0,
  },
}

