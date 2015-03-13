
function map(f, arr)
    for index,value in ipairs(arr) do
        result[index] = f(index,value)
    end
    return result
end
        
meX = 0
meY = 0
canShoot = false

function boxSprite(name,position)
    gui.drawRectangle(position[1],position[2],5,5,0x70FF90A5)
end


--dudewat no colons this is spooky where's muh python
function highlightSprites()
    --probably not bytes, will determine the correct read when I get home and have the game in front of me
    meX = memory.readbyte(0x000B88)
    meY = memory.readbyte(0x000B8C)
    --seriously this language is like made of marshmallows
    --this assignment is index-explicit for a reason
    --because {meX,meY}[0] == nil
    --like wow
    positionTable["me"][0] = meX
    positionTable["me"][1] = meY
    --not sure how big the object table is but on frame 3737
    for i = 0x000BD8, 0x000F9E, 0x50 do
        positionTable[i][0] = memory.readdword[i]
        positionTable[i][0] = memory.readdword[i+2]
    end
    map(drawRectangle(boxSprite,positionTable))
    
    
end

watString = event.onFrameStart(highlightSprites)
