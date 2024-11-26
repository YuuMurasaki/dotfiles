-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

wezterm.on("update-right-status", function(window, pane)
    -- Get the current date and time
    local date = wezterm.strftime("%H:%M:%S")

    -- Set the right status to display time
    window:set_right_status(wezterm.format({
        { Text = date },
    }))
end)

-- Define the default program to run (bash)
config.default_prog = { "/bin/bash" }

-- Set the color scheme
config.color_scheme = "Catppuccin Mocha" -- Choose from: Catppuccin Mocha, Macchiato, Frappe, Latte

-- Set the font and font size
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

-- Tab settings
config.use_fancy_tab_bar = false

-- Set window decorations to NONE for a borderless window
config.window_decorations = "NONE"

-- Set window padding to 0 for no space around the edges
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- Hide the mouse cursor when typing
config.hide_mouse_cursor_when_typing = true

-- Return the configuration to wezterm
return config
