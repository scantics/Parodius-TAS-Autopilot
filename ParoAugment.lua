
function map(f, arr)
    for index,value in ipairs(arr) do
        result[index] = f(value)
    end
    return result
        
meX = 0
meY = 0
canShoot = false

--dudewat no colons this is spooky where's muh python
function decideInput()
    --probably not bytes, will determine the correct read when I get home and have the game in front of me
    meX = memory.readbyte(0x000B88)
    meY = memory.readbyte(0x000B8C)
    positionTable = {}
    for i = 0x000BD8, 0x0001B88, 0x50 do
    
    end
    
    
    
end

watString = event.onFrameStart(highlightSprites)
