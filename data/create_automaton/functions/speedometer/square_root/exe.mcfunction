##by NOPEname


#input:
# 		format:		scoreboard
#		objective: 	SquareRoot
#		name: 		in

#calc:	function math:sqrt/exe
#preserves input: yes

#output:
#		format: 	scoreboard
#		objective: 	SquareRoot
#		name: 		out


scoreboard players operation $Output SquareRoot = $Input SquareRoot
scoreboard players set $Temp SquareRoot 1

execute if score $Output SquareRoot > $Temp SquareRoot run function create_automaton:speedometer/square_root/private/loop
