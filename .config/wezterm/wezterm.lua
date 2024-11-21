-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { '/bin/bash' }

config.color_scheme = "Catppuccin Mocha" -- or Macchiato, Frappe, Latte

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.font_size = 14
config.use_fancy_tab_bar = false

config.window_decorations = "NONE"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.hide_mouse_cursor_when_typing = true

-- and finally, return the configuration to wezterm
return config
