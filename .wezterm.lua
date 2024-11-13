-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "/bin/bash" }

config.color_scheme = "Catppuccin Mocha" -- or Macchiato, Frappe, Latte

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "RESIZE"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
