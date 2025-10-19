##by NOPEname

scoreboard players operation $Output SquareRoot += $Temp SquareRoot
scoreboard players operation $Output SquareRoot /= $Constant2 Constant

scoreboard players operation $Temp SquareRoot = $Input SquareRoot
scoreboard players operation $Temp SquareRoot /= $Output SquareRoot

execute if score $Output SquareRoot > $Temp SquareRoot run function create_automaton:speedometer/square_root/private/loop
