--[[

     Powerarrow Awesome WM theme
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local math, string, os = math, string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-blue"
theme.wallpaper                                 = theme.dir .. "/wallpaper.jpg"
theme.font                                      = "Noto Sans Regular 9"
theme.taglist_font                              = "Noto Sans Regular 10"
theme.fg_normal                                 = "#FEFEFE"
theme.fg_focus                                  = "#889FA7"
theme.fg_urgent                                 = "#b74822"
theme.bg_normal                                 = "#000000"
theme.bg_focus                                  = "#1E2320"
theme.bg_urgent                                 = "#000000" --"#3F3F3F"
theme.taglist_fg_focus                          = "#889FA7"
theme.tasklist_bg_focus                         = "#000000"
theme.tasklist_fg_focus                         = "#889FA7"
theme.border_width                              = dpi(1)
theme.border_normal                             = "#3F3F3F"
theme.border_focus                              = "#6F6F6F"
theme.border_marked                             = "#CC9393"
theme.titlebar_bg_focus                         = "#3F3F3F"
theme.titlebar_bg_normal                        = "#3F3F3F"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(25)
theme.menu_width                                = dpi(260)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note.png"
theme.widget_music_pause                        = theme.dir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/stop.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_task                               = theme.dir .. "/icons/task.png"
theme.widget_scissors                           = theme.dir .. "/icons/scissors.png"
theme.widget_weather                            = theme.dir .. "/icons/dish.png"
theme.tasklist_plain_task_name                  = false
theme.tasklist_disable_icon                     = false
theme.useless_gap                               = 5
theme.gap_single_client                         = false
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"



-- ace additions
theme.bat000charging                            = theme.dir .. "/icons/bat-000-charging.png"
theme.bat000                                    = theme.dir .. "/icons/bat-000.png"
theme.bat020charging                            = theme.dir .. "/icons/bat-020-charging.png"
theme.bat020                                    = theme.dir .. "/icons/bat-020.png"
theme.bat040charging                            = theme.dir .. "/icons/bat-040-charging.png"
theme.bat040                                    = theme.dir .. "/icons/bat-040.png"
theme.bat060charging                            = theme.dir .. "/icons/bat-060-charging.png"
theme.bat060                                    = theme.dir .. "/icons/bat-060.png"
theme.bat080charging                            = theme.dir .. "/icons/bat-080-charging.png"
theme.bat080                                    = theme.dir .. "/icons/bat-080.png"
theme.bat100charging                            = theme.dir .. "/icons/bat-100-charging.png"
theme.bat100                                    = theme.dir .. "/icons/bat-100.png"
theme.batcharged                                = theme.dir .. "/icons/bat-charged.png"

theme.ethon                                     = theme.dir .. "/icons/ethernet-connected.png"
theme.ethoff                                    = theme.dir .. "/icons/ethernet-disconnected.png"
theme.volhigh                                   = theme.dir .. "/icons/volume-high.png"
theme.vollow                                    = theme.dir .. "/icons/volume-low.png"
theme.volmed                                    = theme.dir .. "/icons/volume-medium.png"
theme.volmutedblocked                           = theme.dir .. "/icons/volume-muted-blocked.png"
theme.volmuted                                  = theme.dir .. "/icons/volume-muted.png"
theme.voloff                                    = theme.dir .. "/icons/volume-off.png"
theme.wifidisc                                  = theme.dir .. "/icons/wireless-disconnected.png"
theme.wififull                                  = theme.dir .. "/icons/wireless-full.png"
theme.wifihigh                                  = theme.dir .. "/icons/wireless-high.png"
theme.wifilow                                   = theme.dir .. "/icons/wireless-low.png"
theme.wifimed                                   = theme.dir .. "/icons/wireless-medium.png"
theme.wifinone                                  = theme.dir .. "/icons/wireless-none.png"

theme.notification_font = "Ubuntu Bold 10"
theme.notification_bg = "#303841"
theme.notification_fg = "white"
theme.notification_border_width = "1"
theme.notification_border_color = "#000000"
--theme.notification_shape = gears.shape.rounded_rect
theme.notification_margin = "18"

--theme.tooltip_shape = gears.shape.rounded_rect
theme.tooltip_font = "Ubuntu Bold 10"
theme.tooltip_bg = "#303841"
theme.tooltip_fg = "white"
-- ace end

local markup = lain.util.markup
local separators = lain.util.separators


-- relu systray
local systray = wibox.widget.systray()
theme.systray_icon_spacing = "4"
systray:set_base_size(16)

-- relu pulsebar
local volicon1 = wibox.widget.imagebox(theme.widget_vol)
local volume = lain.widget.pulse {
    settings = function()
        vlevel = volume_now.left --.. "-" .. volume_now.right .. "% | " .. volume_now.device
        if volume_now.muted == "yes" then
            vlevel = vlevel .. " M"
        end
        --widget:set_markup(lain.util.markup("#7493d2", vlevel))
        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, vlevel .. ""))
    end 
}
volume.widget:buttons(awful.util.table.join(
    awful.button({}, 1, function() -- left click
        awful.spawn("pavucontrol")
    end),
    awful.button({}, 2, function() -- middle click
        os.execute(string.format("pactl set-sink-volume %s 100%%", volume.device))
        volume.update()
    end),
    awful.button({}, 3, function() -- right click
        os.execute(string.format("pactl set-sink-mute %s toggle", volume.device))
        volume.update()
    end),
    awful.button({}, 4, function() -- scroll up
        os.execute(string.format("pactl set-sink-volume %s +1%%", volume.device))
        volume.update()
    end),
    awful.button({}, 5, function() -- scroll down
        os.execute(string.format("pactl set-sink-volume %s -1%%", volume.device))
        volume.update()
    end)
))

local fsicon = wibox.widget.imagebox(theme.widget_fs)
theme.fs = lain.widget.fs({
    notification_preset = { font = "Liberation Mono Bold 10", fg = theme.fg_normal },
    settings  = function()
        --widget:set_markup(markup.fontfg(theme.font, "#80d9d8", string.format("%.1f", fs_now["/"].free) .. " GB " .. " free"))
        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, string.format("%.1f", fs_now["/"].free) .. " GB " .. " free"))
    end
})

-- Battery 2
local test_widget =  wibox.widget.textbox()
--wibox.widget.textbox (perc) 
local baticon = wibox.widget.imagebox(theme.bat000)
local battooltip = awful.tooltip({
    --objects = { baticon, test_widget },
    margin_leftright = dpi(15),
    margin_topbottom = dpi(15),
    bg = "#000000"
})
battooltip.wibox.fg = theme.fg_normal
battooltip.textbox.font = theme.font
battooltip.timeout = 0
--battooltip:set_shape(function(cr, width, height)
--  gears.shape.infobubble(cr, width, height, corner_radius, arrow_size, width - dpi(35))
local bat = lain.widget.bat({
    settings = function()
        local relubat = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc
        local index, perc = "bat", tonumber(bat_now.perc) or 0

        if perc <= 7 then
            index = index .. "000"
        elseif perc <= 20 then
            index = index .. "020"
        elseif perc <= 40 then
            index = index .. "040"
        elseif perc <= 60 then
            index = index .. "060"
        elseif perc <= 80 then
            index = index .. "080"
        elseif perc <= 100 then
            index = index .. "100"
        end

        if bat_now.ac_status == 1 then
            index = index .. "charging"
            -- relubat = relubat .. " plugged"
        end

        baticon:set_image(theme[index])
        --test_widget:set_markup(string.format("\n%s%%, %s", perc, bat_now.time .. " kurde"))
        test_widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, relubat .. " "))
        --test_widget:set_markup("dupa")
        battooltip:set_markup(string.format("%s%%, %s", perc, bat_now.time .. " kurde"))
    end
})

-- Wifi carrier and signal strength
local wificon = wibox.widget.imagebox(theme.wifidisc)
local wifitooltip = awful.tooltip({
    objects = { wificon },
    margin_leftright = dpi(15),
    margin_topbottom = dpi(15),
    bg = theme.tooltip_bg,
    --fg = theme.fg_normal,
    gaps = 5
})
wifitooltip.wibox.fg = theme.fg_normal
wifitooltip.textbox.font = theme.font
wifitooltip.timeout = 0
--wifitooltip:set_shape(function(cr, width, height)
--    gears.shape.infobubble(cr, width, height, corner_radius, arrow_size, width - dpi(120))
--end)
local mywifisig = awful.widget.watch(
    { awful.util.shell, "-c", "awk 'NR==3 {printf(\"%d-%.0f\\n\",$2, $3*10/7)}' /proc/net/wireless; iw dev wlp3s0 link" },
    2,
    function(widget, stdout)
        local carrier, perc = stdout:match("(%d)-(%d+)")
        local tiptext = stdout:gsub("(%d)-(%d+)", ""):gsub("%s+$", "")
        perc = tonumber(perc)

        if carrier == "1" or not perc then
            wificon:set_image(theme.wifidisc)
            wifitooltip:set_markup("No carrier")
        else
            if perc <= 5 then
                wificon:set_image(theme.wifinone)
            elseif perc <= 25 then
                wificon:set_image(theme.wifilow)
            elseif perc <= 50 then
                wificon:set_image(theme.wifimed)
            elseif perc <= 75 then
                wificon:set_image(theme.wifihigh)
            else
                wificon:set_image(theme.wififull)
            end
            wifitooltip:set_markup(tiptext)
        end
    end
)
wificon:connect_signal("button::press", function() awful.spawn(string.format("%s -e wavemon", awful.util.terminal)) end)

-- ace end

-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
--[[local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
) --]]
local clock = wibox.widget.textclock(markup("#889FA7", "%a %d %b ") .. markup("#ab7367", " ") .. markup("#ffffff", " %H:%M "))
--clock.font = theme.font
clock.font = "Noto Sans Bold 10"

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "Noto Sans Mono Medium 10",
        fg   = theme.fg_normal,
        bg   = theme.tooltip_bg,
        position = "top_middle",
    }
})

-- ALSA volume
theme.volume = lain.widget.alsabar({
    --togglechannel = "IEC958,3",
    notification_preset = { font = theme.font, fg = theme.fg_normal },
})

-- MPD
--[[
local musicplr = "urxvt -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    --[[awful.button({ }, 1, function ()
        awful.spawn.with_shell("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        awful.spawn.with_shell("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ modkey }, 3, function () awful.spawn.with_shell("pkill ncmpcpp") end),
    awful.button({ }, 3, function ()
        awful.spawn.with_shell("mpc stop")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
            widget:set_markup(markup.font(theme.font, markup("#FFFFFF", artist) .. " " .. title))
        elseif mpd_now.state == "pause" then
            widget:set_markup(markup.font(theme.font, " mpd paused "))
            mpdicon:set_image(theme.widget_music_pause)
        else
            widget:set_text("")
            mpdicon:set_image(theme.widget_music)
        end
    end
})
--]]

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
    end
})

-- Coretemp (lain, average)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})
--]]
local tempicon = wibox.widget.imagebox(theme.widget_temp)

--[[ Weather
https://openweathermap.org/
Type in the name of your city
Copy/paste the city code in the URL to this file in city_id
--]]
local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 2803138, -- placeholder (Belgium)
    notification_preset = { font = "Noto Sans Mono Medium 10", fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#ffffff", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, "#ffffff", descr .. " @ " .. units .. "°C "))
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.level) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.level) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

        widget:set_markup(markup.font(theme.font, " " .. volume_now.level .. "% "))
    end
})

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#FEFEFE", " " .. net_now.received .. " ↓↑ " .. net_now.sent .. " "))
    end
})

-- Separators
local arrow = separators.arrow_left

function theme.powerline_rl(cr, width, height)
    local arrow_depth, offset = height/2, 0

    -- Avoid going out of the (potential) clip area
    if arrow_depth < 0 then
        width  =  width + 2*arrow_depth
        offset = -arrow_depth
    end

    cr:move_to(offset + arrow_depth         , 0        )
    cr:line_to(offset + width               , 0        )
    cr:line_to(offset + width - arrow_depth , height/2 )
    cr:line_to(offset + width               , height   )
    cr:line_to(offset + arrow_depth         , height   )
    cr:line_to(offset                       , height/2 )

    cr:close_path()
end

local function pl(widget, bgcolor, padding)
    return wibox.container.background(wibox.container.margin(widget, dpi(16), dpi(16)), bgcolor, theme.powerline_rl)
end

function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "urxvt", height = 0.50, argname = "--name %s" })



    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- All tags open with layout 1
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    --s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(22), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --spr,
            s.mytaglist,
            s.mypromptbox,
            spr,
        },
        --s.mytasklist, -- Middle widget
        wibox.container.place(
            clock,
            'center',
            'center'
            ),
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            -- relu remove: wibox.widget.systray(),
            wibox.container.margin(
                systray,
                3,3,3,3, '#000000'
                ),
            --[[ using shapes
            pl(wibox.widget { mpdicon, theme.mpd.widget, layout = wibox.layout.align.horizontal }, "#343434"),
            pl(task, "#343434"),
            --pl(wibox.widget { mailicon, mail and theme.mail.widget, layout = wibox.layout.align.horizontal }, "#343434"),
            pl(wibox.widget { memicon, mem.widget, layout = wibox.layout.align.horizontal }, "#777E76"),
            pl(wibox.widget { cpuicon, cpu.widget, layout = wibox.layout.align.horizontal }, "#4B696D"),
            pl(wibox.widget { tempicon, temp.widget, layout = wibox.layout.align.horizontal }, "#4B3B51"),
            --pl(wibox.widget { fsicon, theme.fs and theme.fs.widget, layout = wibox.layout.align.horizontal }, "#CB755B"),
            pl(wibox.widget { baticon, bat.widget, layout = wibox.layout.align.horizontal }, "#8DAA9A"),
            pl(wibox.widget { neticon, net.widget, layout = wibox.layout.align.horizontal }, "#C0C0A2"),
            pl(binclock.widget, "#777E76"),
            --]]
            -- using separators
            --arrow(theme.bg_normal, "#343434"),
            --wibox.container.background(wibox.container.margin(wibox.widget { mailicon, mail and mail.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#343434"),
            --arrow("alpha", "#497B96"),
            --wibox.container.background(wibox.container.margin(wibox.widget { mpdicon, theme.mpd.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(6)), "#497B96"),
            --arrow("#343434", "#889FA7"),
            arrow("#alpha", "#889FA7"),
            wibox.container.background(wibox.container.margin(wibox.widget { volicon1, volume.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)), "#889FA7"),
            arrow("#889FA7", "#497B96"),
            wibox.container.background(wibox.container.margin(wibox.widget { memicon, mem.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)), "#497B96"),
            arrow("#497B96", "#889FA7"),
            wibox.container.background(wibox.container.margin(wibox.widget { fsicon, theme.fs.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(4)), "#889FA7"),
            arrow("#889FA7", "#497B96"),
            wibox.container.background(wibox.container.margin(wibox.widget { tempicon, temp.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(4)), "#497B96"),
            --arrow("#497B96", "#889FA7"),
            --wibox.container.background(wibox.container.margin(wibox.widget { weathericon, theme.weather.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#889FA7"),
            arrow("#497B96", "#889FA7"),
            wibox.container.background(wibox.container.margin(wibox.widget { baticon, test_widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#889FA7"),
            arrow("#889FA7", "#497B96"),
            wibox.container.background(wibox.container.margin(wibox.widget { nil, wificon, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#497B96"),
            --arrow("#889FA7", "#497B96"),
            --wibox.container.background(wibox.container.margin(clock, dpi(4), dpi(8)), "#497B96"),
            arrow("#497B96", "alpha"),
            --]]
            s.mylayoutbox,
        },


        --[[
            layout = wibox.layout.fixed.horizontal,
            spr,
            arrl_ld,
            wibox.container.margin(
                systray,
                3,3,3,3, '#000000'
                ),
            --systray,
            arrl_dl,
            volicon1,
            volume.widget,
            memicon,
            memory.widget,
            fsicon,
            theme.fs.widget,
            --weathericon, theme.weather.widget,
            tempicon,
            temp.widget,
            baticon,
            test_widget,
            wificon,
            s.mylayoutbox
        }, --]]R
    }
end

return theme
