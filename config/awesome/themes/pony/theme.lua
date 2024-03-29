-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}

local theme_path = os.getenv("HOME") .. "/.config/awesome/themes/pony/"
local lain_path = os.getenv("HOME") .. "/.config/awesome/lain/icons/layout/default/"

theme.wallpaper = theme_path .. "factorio_notitle_HD.png"
-- }}}

-- width of uesless gaps (for lain layouts with gaps between windows)
theme.useless_gap_width = 10

-- {{{ Styles
theme.font      = "Ubuntu Bold 9"

-- {{{ Colors
theme.fg_normal  = "#DCDCCC"
theme.fg_focus   = "#F0DFAF"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#3F3F3F"
theme.bg_focus   = "#1E2320"
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 2
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#6F6F6F"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = theme_path .. "taglist/squarefz.png"
theme.taglist_squares_unsel = theme_path .. "taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = theme_path .. "awesome-icon.png"
theme.menu_submenu_icon      = theme_path .. "submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = theme_path .. "layouts/tile.png"
theme.layout_tileleft   = theme_path .. "layouts/tileleft.png"
theme.layout_tilebottom = theme_path .. "layouts/tilebottom.png"
theme.layout_tiletop    = theme_path .. "layouts/tiletop.png"
theme.layout_fairv      = theme_path .. "layouts/fairv.png"
theme.layout_fairh      = theme_path .. "layouts/fairh.png"
theme.layout_spiral     = theme_path .. "layouts/spiral.png"
theme.layout_dwindle    = theme_path .. "layouts/dwindle.png"
theme.layout_max        = theme_path .. "layouts/max.png"
theme.layout_fullscreen = theme_path .. "layouts/fullscreen.png"
theme.layout_magnifier  = theme_path .. "layouts/magnifier.png"
theme.layout_floating   = theme_path .. "layouts/floating.png"
-- lain layouts {{{
theme.layout_cascadebrowse  = theme_path .. "icons/layout/default/cascadebrowse.png"
theme.layout_cascadebrowsew = theme_path .. "icons/layout/default/cascadebrowsew.png"
theme.layout_cascade        = theme_path .. "icons/layout/default/cascade.png"
theme.layout_cascadew       = theme_path .. "icons/layout/default/cascadew.png"
theme.layout_centerfair     = theme_path .. "icons/layout/default/centerfair.png"
theme.layout_centerfairw    = theme_path .. "icons/layout/default/centerfairw.png"
theme.layout_centerwork     = theme_path .. "icons/layout/default/centerwork.png"
theme.layout_centerworkw    = theme_path .. "icons/layout/default/centerworkw.png"
theme.layout_termfair       = theme_path .. "icons/layout/default/termfair.png"
theme.layout_termfairw      = theme_path .. "icons/layout/default/termfairw.png"
-- }}}
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = theme_path .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme_path .. "titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = theme_path .. "titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme_path .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme_path .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme_path .. "titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = theme_path .. "titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme_path .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme_path .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme_path .. "titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = theme_path .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme_path .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme_path .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme_path .. "titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = theme_path .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme_path .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme_path .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme_path .. "titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
