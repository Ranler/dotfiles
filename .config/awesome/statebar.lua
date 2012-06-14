-------------------
-- ranler's widgets
 -- awesome 3.4.11
-------------------

require("vicious")
require("blingbling")

-- {{{ CPU
-- cache
vicious.cache(vicious.widgets.cpu)
vicious.cache(vicious.widgets.cpuinf)

-- core 0 freq
cpufreq = widget ({ type="textbox" })
vicious.register(cpufreq, vicious.widgets.cpuinf, function(widget, args)
  return string.format(" cpu: <span color=\"#ffa500\">%1.1fGHz</span> ", args["{cpu0 ghz}"])
end, 300)

-- core 0 %
cpupct = widget({ type = "textbox" })
vicious.register(cpupct, vicious.widgets.cpu, " <span color=\"#ffa500\">$2% $3% $4% $5%</span> ", 2)

-- CPU Temp 
tempwidget = widget ({ type = "textbox" })
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
memused = widget({ type = "textbox" })
vicious.register(memused, vicious.widgets.mem, ' ram: <span color="green">$2MB/$9MB/$3MB</span> ', 5)
-- swap used
swapused = widget({ type = "textbox" })
vicious.register(swapused, vicious.widgets.mem, ' swap: <span color="green">$6MB/$7MB</span> ', 5)

--- }}}

-- {{{ NETWORK
-- cache
vicious.cache(vicious.widgets.net)

-- net speed
netwidget = widget({ type = "textbox" })
vicious.register(netwidget, vicious.widgets.net, ' net: <span color="#b0e2ff">${eth0 up_kb} kb/${eth0 down_kb} kb</span> ',2)
-- }}}


-- {{{ CLOCK
clockwidget = widget({ type = "textbox" })
vicious.register(clockwidget, vicious.widgets.date,
    ' <span color="#8b8970">%H:%M 20%y/%m/%d</span> ')
-- }}}












-- CPU Widget
cpulabel= widget({ type = "textbox" })
cpulabel.text='CPU: '
mycairograph=blingbling.classical_graph.new()
mycairograph:set_height(18)
mycairograph:set_width(200)
mycairograph:set_tiles_color("#00000022")
mycairograph:set_show_text(true)
mycairograph:set_label("Load: $percent %")
vicious.register(mycairograph, vicious.widgets.cpu,'$1',2)


 memwidget=blingbling.classical_graph.new()
 memwidget:set_height(18)
 memwidget:set_width(200)
 memwidget:set_tiles_color("#00000022")
 memwidget:set_show_text(true)
 vicious.register(memwidget, vicious.widgets.mem, '$1', 2)
