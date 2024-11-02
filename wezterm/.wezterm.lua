local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false
config.enable_kitty_graphics = true
config.default_prog = { "cygwin" }

return config
