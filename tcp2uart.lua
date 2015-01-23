uart.setup(0,9600,8,0,0)
sv=net.createServer(net.TCP, 60)
global_c = nil         
sv:listen(9999,wifi.sta.getip(),
        function(c)
            global_c = c
            c:on("receive",
            function(sck, pl)
                uart.write(0,pl)
            end)       
        end)

uart.on("data",0, 
        function(data)
            --uart.write(0,data)        
            if (global_c ~= nil) then
                global_c:send(data)

            end    
        end, 
        0) 


