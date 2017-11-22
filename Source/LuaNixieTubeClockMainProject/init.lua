dofile ("initializationConfig.lua")

dofile ("initializationMode.lua")

dofile ("controlPower.lua")

dofile ("controlNumbers.lua")

wifi.setmode(wifi.STATION)
station_cfg={}
station_cfg.ssid="Bond"
station_cfg.pwd="Bond@pa$$w0rd"
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

nixieClockTubePosition = 0
tmr.alarm(2, 1000, tmr.ALARM_AUTO, function()
    tm = rtctime.epoch2cal(rtctime.get());
    time = string.format("%02d%02d%02d", tm["hour"], tm["min"], tm["sec"])

    stringCapturePosition = nixieClockTubePosition + 1;
    controlPower(nixieClockTubePosition)
    controlNumbers(string.sub(time,stringCapturePosition,stringCapturePosition))
    
    nixieClockTubePosition = nixieClockTubePosition + 1;
    if(nixieClockTubePosition > 5) then
       nixieClockTubePosition = 0
    end
end)








