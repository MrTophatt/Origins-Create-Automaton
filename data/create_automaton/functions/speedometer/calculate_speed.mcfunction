#Calculate X and Z Distance Travelled (Coordinates from 1 tick ago are stored in "@s Pos0/Pos2")
execute store result score $Temp Pos0 run data get entity @s Pos[0] 1000
execute store result score $Temp Pos2 run data get entity @s Pos[2] 1000

scoreboard players operation $Calc Pos0 = $Temp Pos0
scoreboard players operation $Calc Pos2 = $Temp Pos2
scoreboard players operation $Calc Pos0 -= @s Pos0
scoreboard players operation $Calc Pos2 -= @s Pos2


#Combine X and Z Distance into Real Distance
scoreboard players operation $Calc Pos0 *= $Calc Pos0
scoreboard players operation $Calc Pos2 *= $Calc Pos2
scoreboard players operation $Calc Pos0 += $Calc Pos2
scoreboard players operation $Input SquareRoot = $Calc Pos0
function create_automaton:speedometer/square_root/exe


#Display Decimals
scoreboard players operation $Output Constant = $Output SquareRoot
scoreboard players operation $Output SquareRoot /= $Constant100 Constant
scoreboard players operation $Output Constant %= $Constant100 Constant

scoreboard players operation @s Pos0 = $Temp Pos0
scoreboard players operation @s Pos2 = $Temp Pos2

title @s actionbar ["",{"score":{"name":"$Output","objective":"SquareRoot"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"$Output","objective":"Constant"},"color":"gold"},{"text":" m/s","color":"gold"}]
