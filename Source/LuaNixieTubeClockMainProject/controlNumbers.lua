print("controlNumbers start...")

function controlNumbers(value)
    if(value == "0") then
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "1") then
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "2") then
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "3") then
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "4") then
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "5") then
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "6") then
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "7") then
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.HIGH )
       gpio.write( k155id1PinC, gpio.HIGH )
       gpio.write( k155id1PinD, gpio.LOW )
    elseif(value == "8") then
       gpio.write( k155id1PinA, gpio.LOW )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.HIGH )
    elseif(value == "9") then
       gpio.write( k155id1PinA, gpio.HIGH )
       gpio.write( k155id1PinB, gpio.LOW )
       gpio.write( k155id1PinC, gpio.LOW )
       gpio.write( k155id1PinD, gpio.HIGH )
    end
end

print("controlNumbers end...")
