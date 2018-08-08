---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
-- local themes_path = gfs.get_themes_dir()
local themes_path = "~/.config/awesome/themes/"

local theme = {}

theme.font          = "monospace 8"

theme.bg_normal     = "#22222255"
theme.bg_focus      = "#535d6c55"
theme.bg_urgent     = "#ff000055"
theme.bg_minimize   = "#44444455"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa55"
theme.fg_focus      = "#ffffff55"
theme.fg_urgent     = "#ffffff55"
theme.fg_minimize   = "#ffffff55"

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(0)
theme.border_normal = "#00000055"
theme.border_focus  = "#535d6c55"
theme.border_marked = "#91231c55"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

theme.wallpaper = themes_path.."default/background.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
