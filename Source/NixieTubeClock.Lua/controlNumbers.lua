print("controlNumbers start...")

function controlNumbers(value)
    if(value == "0") then OK
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "1") then OK
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "2") then OK
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "3") then OK
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "4") then OK
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "5") then TEST 0
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "6") then TEST 4
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "7") then TEST 9
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "8") then OK
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.HIGH )
    elseif(value == "9") then OK
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.HIGH )
    end
end

print("controlNumbers end...")
