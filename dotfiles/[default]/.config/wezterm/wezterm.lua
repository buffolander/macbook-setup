local wezterm = require("wezterm");

config = wezterm.config_builder()
act = wezterm.action

config = {
    automatically_reload_config = true,
    background = {
        {
            source = {
                File = {
                    path = os.getenv("HOME") .. "/.config/wezterm/aneesh-matcha-EtQH2mD7INw-unsplash.jpg",
                },
            },
            hsb = {
                hue = 1.00,
                saturation = 1.02,
                brightness = 0.25,
            },
            height = "100%",
            repeat_x = 'Mirror',
        },
        {
            source = {
                Gradient = {
                    preset = "Magma",
                    orientation = {
                        Radial = {
                            cx = 0,
                            cy = 1,
                            radius = 7.25,
                        },
                    },
                },
            },
            width = "100%",
            height = "100%",
            opacity = 0.75,
        },
    },
    color_scheme = "WildCherry",
    default_cursor_style = "BlinkingBlock",
    enable_tab_bar = false,
    font = wezterm.font("JetBrains Mono", { weight = "Regular" }),
    font_size = 12.5,
    foreground_text_hsb = {
        hue = 1.0,
        saturation = 2.0,
        brightness = 2.0,
    },
    keys = {
        {
            key = 'K',
            mods = 'CMD|SHIFT',
            action = act.Multiple {
                act.ClearScrollback 'ScrollbackAndViewport',
                act.SendKey { key = 'L', mods = 'CTRL' },
            },
        },
    },
    window_close_confirmation = "NeverPrompt",
    -- window_decorations = "RESIZE",
}

return config
