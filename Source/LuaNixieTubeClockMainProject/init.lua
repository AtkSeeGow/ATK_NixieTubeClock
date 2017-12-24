dofile ("initializationConfig.lua")

dofile ("initializationMode.lua")

dofile ("controlPower.lua")

dofile ("controlNumbers.lua")

wifi.setmode(wifi.STATION)
station_cfg={}
station_cfg.ssid="TP-LINK_TL-WDR4300_2.4GHz"
station_cfg.pwd="TP-LINK_TL-WDR4300_2.4GHz"
station_cfg.save=true
wifi.sta.config(station_cfg)

function synchronizationTime()
    sntp.sync("pool.ntp.org", function()
    end)
end
synchronizationTime();
tmr.alarm(1, 3600000, tmr.ALARM_AUTO, function()
    synchronizationTime();
end)

hour = 0
time = "000000"; 
tmr.alarm(2, 1000, tmr.ALARM_AUTO, function() 
    tm = rtctime.epoch2cal(rtctime.get()); 

    hour = tm["hour"] + 8;
    if(hour >= 24) then
        hour = hour - 24;
    end

    time = string.format("%02d%02d%02d", hour, tm["min"], tm["sec"]);
end) 

nixieClockTubePosition = 0;
tmr.alarm(3, 10, tmr.ALARM_AUTO, function()
    stringCapturePosition = nixieClockTubePosition + 1;
    
    controlNumbers(string.sub(time,stringCapturePosition,stringCapturePosition))
    controlPower(nixieClockTubePosition)
    
    nixieClockTubePosition = nixieClockTubePosition + 1;
    if(nixieClockTubePosition > 5) then
       nixieClockTubePosition = 0
    end
end)








