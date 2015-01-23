wifi.setmode(wifi.SOFTAP);
wifi.ap.config({ssid="wifi-iot-node-"..wifi.ap.getmac(),pwd="12345678"});
print("AP mdoe, IP is "..wifi.ap.getip())
-- check s2, default call tcp2uart.lua, pressed call app.lua
pin=3
gpio.mode(pin, gpio.INPUT)
gpio.read(pin)
gpio.read(pin)
if (gpio.read(pin) == 1) then
    dofile('app1.lua')
else
    dofile("app2.lua")
end


