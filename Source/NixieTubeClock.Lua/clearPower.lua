print("clearPower start...")

function clearPower(value)
    if(value == 2) then
       gpio.write( hef4028PinB, gpio.LOW )
    elseif(value == 3) then
       gpio.write( hef4028PinA, gpio.LOW )
    elseif(value == 4) then
       gpio.write( hef4028PinC, gpio.HIGH )
    elseif(value == 5) then
       gpio.write( hef4028PinB, gpio.LOW )
    elseif(value == 6) then
       gpio.write( hef4028PinD, gpio.HIGH )
    elseif(value == 1) then
       gpio.write( hef4028PinB, gpio.HIGH )
    end
end

print("clearPower end...")