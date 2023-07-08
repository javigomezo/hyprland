-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Enable Wayland
config.enable_wayland = true

-- Set Nord color scheme
config.color_scheme = 'nord'

-- Disable Tab Bar
config.enable_tab_bar = false

-- Fonts
config.font = wezterm.font_with_fallback {
  'Comic Code Ligatures',
  'Noto Color Emoji',
  'CartographCF Nerd Font'
}

-- and finally, return the configuration to wezterm
return config

