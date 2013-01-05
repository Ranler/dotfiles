-------------------
-- ranler's widgets
-- awesome 3.5
-------------------
local vicious = require("vicious")
local wibox = require("wibox")
-- local blingbling = require("blingbling")

local green="#7fb219"
local cyan="#7f4de6"
local red="#e04613"                             
local lblue="#6c9eab"                        
local dblue="#00ccff"
local black="#000000"
local lgrey="#d2d2d2"
local dgrey="#333333"
local white="#ffffff"

left_separator = wibox.widget.textbox("[")
right_separator = wibox.widget.textbox("]")


-- {{{ CPU
-- cache
vicious.cache(vicious.widgets.cpu)
vicious.cache(vicious.widgets.cpuinf)

-- core 0 freq
-- cpufreq = widget ({ type="textbox" }) -- old style
cpufreq = wibox.widget.textbox()
vicious.register(cpufreq, vicious.widgets.cpuinf,
		 function(widget, args)
		    return string.format(" cpu: <span color=\"#ffa500\">%1.1f %1.1f %1.1f %1.1f</span>", 
					 args["{cpu0 ghz}"], 
					 args["{cpu1 ghz}"],
					 args["{cpu2 ghz}"],
					 args["{cpu3 ghz}"])
end, 300)

-- core 0 %
cpupct = wibox.widget.textbox()
vicious.register(cpupct, vicious.widgets.cpu, " <span color=\"#ffa500\">$2% $3% $4% $5%</span> ", 2)

-- CPU Temp 
tempwidget = wibox.widget.textbox()
vicious.register(tempwidget, vicious.widgets.thermal, function(widget, args)
 if args[1] > 70 then						
    return ' <span color="red">' .. args[1] .. "°C</span>"
 elseif args[1] > 50 then
    return ' <span color="#ffb6c1">' .. args[1] .. "°C</span>"
 end
 return ' <span color="#ffa500">' .. args[1] .. "°C</span>"
end, 19, { "it87.552","core"} )

-- }}}


-- {{{ MEMORY
vicious.cache(vicious.widgets.mem)
-- ram used
memused = wibox.widget.textbox()
vicious.register(memused, vicious.widgets.mem, ' ram: <span color="green">$2MB/$9MB/$3MB</span> ', 5)
-- swap used
swapused = wibox.widget.textbox()
vicious.register(swapused, vicious.widgets.mem, ' swap: <span color="green">$6MB/$7MB</span> ', 5)
--- }}}


-- {{{ NETWORK
-- cache
vicious.cache(vicious.widgets.net)

-- net speed
netwidget = wibox.widget.textbox()
vicious.register(netwidget, vicious.widgets.net, ' net: <span color="#b0e2ff">${eth0 up_kb} kb/${eth0 down_kb} kb</span> ',2)
-- }}}
-- blingbling.popups.netstat(netwidget,
--			  {title_color = lblue, 
--			   established_color = green, 
--			   listen_color = cyan})


-- {{{ CLOCK
clockwidget = wibox.widget.textbox()
vicious.register(clockwidget, vicious.widgets.date, ' <span color="#8b8970">%H:%M 20%y/%m/%d</span> ')
-- }}}


--[[
-- CPU Widget
-- cpulabel= widget({ type = "textbox" })
-- cpulabel.text='CPU: '


mycairograph=blingbling.classical_graph.new()
mycairograph:set_height(18)
mycairograph:set_width(200)
mycairograph:set_tiles_color("#00000022")
mycairograph:set_show_text(true)
mycairograph:set_label("CPU: $percent %")
blingbling.popups.htop(mycairograph.widget,
		       {title_color = white, 
			user_color= red, 
			root_color= lblue, 
			terminal = "urxvt"})
vicious.register(mycairograph, vicious.widgets.cpu,'$1',2)


memwidget=blingbling.classical_graph.new()
memwidget:set_height(18)
memwidget:set_width(200)
memwidget:set_tiles_color("#00000022")
memwidget:set_show_text(true)
vicious.register(memwidget, vicious.widgets.mem, '$1', 2)
]]
