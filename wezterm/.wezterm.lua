local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false
config.default_prog = { "powershell" }
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.font = wezterm.font 'JetBrains Mono'
config.window_padding = {
  left = 5,
  right = 5,
  top = 0,
  bottom = 8,
}

config.window_background_opacity = 0.8

return config
