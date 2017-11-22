print("controlPower start...")

function controlPower(value)
    if(value == 0) then
       gpio.write( hef4028PinA, gpio.LOW )
       gpio.write( hef4028PinB, gpio.LOW )
       gpio.write( hef4028PinC, gpio.LOW )
       gpio.write( hef4028PinD, gpio.HIGH )
    elseif(value == 1) then
       gpio.write( hef4028PinA, gpio.HIGH )
       gpio.write( hef4028PinB, gpio.LOW )
       gpio.write( hef4028PinC, gpio.LOW )
       gpio.write( hef4028PinD, gpio.LOW )
    elseif(value == 2) then
       gpio.write( hef4028PinA, gpio.HIGH )
       gpio.write( hef4028PinB, gpio.HIGH )
       gpio.write( hef4028PinC, gpio.LOW )
       gpio.write( hef4028PinD, gpio.LOW )
    elseif(value == 3) then
       gpio.write( hef4028PinA, gpio.LOW )
       gpio.write( hef4028PinB, gpio.HIGH )
       gpio.write( hef4028PinC, gpio.HIGH )
       gpio.write( hef4028PinD, gpio.LOW )
    elseif(value == 4) then
       gpio.write( hef4028PinA, gpio.HIGH )
       gpio.write( hef4028PinB, gpio.LOW )
       gpio.write( hef4028PinC, gpio.HIGH )
       gpio.write( hef4028PinD, gpio.LOW )
    elseif(value == 5) then
       gpio.write( hef4028PinA, gpio.HIGH )
       gpio.write( hef4028PinB, gpio.LOW )
       gpio.write( hef4028PinC, gpio.LOW )
       gpio.write( hef4028PinD, gpio.HIGH )
    end
end

print("controlPower end...")
