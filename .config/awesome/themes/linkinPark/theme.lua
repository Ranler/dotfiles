---------------------------
-- Default awesome theme --
---------------------------

-- colors list 
-- #000000  black
-- #b23535  red 
-- #60801f  green 
-- #be6e00  yellow
-- #1f6080  blue 
-- #8f46b2  magenta
-- #73afb4  cyna 
-- #b2b2b2  white 
-- #555555  bright black
-- #ff4b4b  bright red 
-- #9bcd32  bright green 
-- #d79b1e  bright yellow
-- #12A2C5  bright blue 
-- #cd64ff  bright magenta
-- #9bcdff  bright cyan 
-- #ffffff  bright white

-- Example:
theme = {}

-- font list -------------------
-- theme.font          = "WC Wunderbach Bta 9"
-- theme.font          = "Virgo 01 9"
-- theme.font          = "Alpha Echo 9"
-- theme.font          = "Comic Sans MS 8"
-- theme.font          = "Carousel 10"
-- theme.font          = "Chewy 9"
theme.font          = "DejaVu Sans 9"

theme.bg_normal     = "#000000" -- black 
theme.bg_focus      = "#48A4D5" -- bright blue 
theme.bg_urgent     = "#b23535" -- dark red
theme.bg_minimize   = "#1a1918"

theme.fg_normal     = "#48A4D5" -- bright blue
theme.fg_focus      = "#000000" -- black  
theme.fg_urgent     = "#b2b2b2" -- grey 
theme.fg_minimize   = "#828282" -- dark grey 

-- border 
theme.border_width  = "1"
theme.border_normal = "#484848" -- black grey 
theme.border_focus  = "#48A4D5" -- bright blue
theme.border_marked = "#a4a4a4" -- bright grey

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]

-- taglist 
theme.taglist_bg_focus  = "#48A4D5"
theme.taglist_bg_normal = "#000000"
theme.taglist_bg_urgent = "#b23535"

theme.taglist_fg_focus  = "#000000"
theme.taglist_fg_normal = "#48A4D5"
theme.taglist_fg_normal = "#000000"

-- tasklist
-- theme.tasklist_bg_focus  = "#585858" -- grey 
theme.tasklist_bg_focus  = "#000000" -- black 
theme.tasklist_bg_normal = "#000000" -- black 
theme.tasklist_bg_urgent = "#000000" -- black 

theme.tasklist_fg_focus  = "#48A4D5" -- bright blue 
theme.tasklist_fg_normal = "#b2b2b2" -- bright grey 
theme.tasklist_fg_urgent = "#b23535" -- black red 


-- Display the taglist squares
theme.taglist_squares_sel   = "~/.config/awesome/themes/linkinPark/taglist/squarefw.png"
theme.taglist_squares_unsel = "~/.config/awesome/themes/linkinPark/taglist/squarew.png"

-- white bird on tasklist icon 
-- theme.tasklist_floating_icon = "~/.config/awesome/themes/linkinPark/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
-- theme.menu_submenu_icon = "~/.config/awesome/themes/linkinPark/submenu.png"
theme.menu_height = "20"
theme.menu_width  = "120"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/themes/linkinPark/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/themes/linkinPark/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/themes/linkinPark/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/themes/linkinPark/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "~/.config/awesome/themes/linkinPark/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "~/.config/awesome/themes/linkinPark/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/themes/linkinPark/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/themes/linkinPark/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "~/.config/awesome/themes/linkinPark/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "~/.config/awesome/themes/linkinPark/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/themes/linkinPark/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/themes/linkinPark/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "~/.config/awesome/themes/linkinPark/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "~/.config/awesome/themes/linkinPark/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/themes/linkinPark/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/themes/linkinPark/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "~/.config/awesome/themes/linkinPark/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "~/.config/awesome/themes/linkinPark/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
-- theme.wallpaper_cmd = { "awsetbg ~/.config/awesome/themes/linkinPark/background/background.png" }
-- random wallpaper 
-- theme.wallpaper_cmd = { "feh --bg-center ~/.config/awesome/themes/linkinPark/background/Arch_Linux_Wallpaper.jpg" }
theme.wallpaper_cmd = { "awsetbg -u feh " .. os.getenv("HOME") .. "/.config/awesome/themes/linkinPark/background/arch_linux-wallpaper-1440x900.jpg" }

-- You can use your own layout icons like this:
theme.layout_fairh = "~/.config/awesome/themes/linkinPark/layouts/fairhw.png"
theme.layout_fairv = "~/.config/awesome/themes/linkinPark/layouts/fairvw.png"
theme.layout_floating  = "~/.config/awesome/themes/linkinPark/layouts/floatingw.png"
theme.layout_magnifier = "~/.config/awesome/themes/linkinPark/layouts/magnifierw.png"
theme.layout_max = "~/.config/awesome/themes/linkinPark/layouts/maxw.png"
theme.layout_fullscreen = "~/.config/awesome/themes/linkinPark/layouts/fullscreenw.png"
theme.layout_tilebottom = "~/.config/awesome/themes/linkinPark/layouts/tilebottomw.png"
theme.layout_tileleft   = "~/.config/awesome/themes/linkinPark/layouts/tileleftw.png"
theme.layout_tile = "~/.config/awesome/themes/linkinPark/layouts/tilew.png"
theme.layout_tiletop = "~/.config/awesome/themes/linkinPark/layouts/tiletopw.png"
theme.layout_spiral  = "~/.config/awesome/themes/linkinPark/layouts/spiralw.png"
theme.layout_dwindle = "~/.config/awesome/themes/linkinPark/layouts/dwindlew.png"

-- awesome icon 
-- theme.awesome_icon = "~/.config/awesome/icons/tag-blue.png"
-- theme.awesome_icon = "~/.config/awesome/themes/linkinPark/icons/small_arch_blue.png"
-- theme.awesome_icon = "~/.config/awesome/themes/linkinPark/icons/awesome.png"
theme.awesome_icon = "~/.config/awesome/themes/linkinPark/icons/linkin_park_icon.png"

-- ------------------ Addes ------------------------------
-- theme.widget_net = "~/.config/awesome/themes/linkinPark/icons/down.png"
-- theme.widget_netup = "~/.config/awesome/themes/linkinPark/icons/up.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80
