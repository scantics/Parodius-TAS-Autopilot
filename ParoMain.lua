INPUT_0  = 1
INPUT_1  = 2
INPUT_2  = 4
INPUT_3  = 8
INPUT_4  = 16
INPUT_5  = 32
INPUT_6  = 64
INPUT_7  = 128
INPUT_8  = 256
INPUT_9  = 512
INPUT_10 = 1024

INPUT_NULL = 0

MODE = "MENU"

meX = 0
meY = 0
canShoot = false

--dudewat no colons this is spooky where's muh python
function decideInput()
    --probably not bytes, will determine the correct read when I get home and have the game in front of me
    meX = memory.readbyte(0x000B88)
    meY = memory.readbyte(0x000B8C)
    for i = 0x000BD8, 0x0001B88, 0x50 do
        
    end
