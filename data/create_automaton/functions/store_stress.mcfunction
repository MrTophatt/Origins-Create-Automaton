execute store result score @s stress_meter run resource get @s create_automaton:stress_stress-meter


resource set @s create_automaton:stress_constant-stress 0

execute if entity @s[tag=hasDisplay] run resource change @s create_automaton:stress_constant-stress 150
execute if entity @s[tag=hasReach] run resource change @s create_automaton:stress_constant-stress 200
execute if entity @s[tag=hasHelmet] run resource change @s create_automaton:stress_constant-stress 120
execute if entity @s[tag=hasTank] run resource change @s create_automaton:stress_constant-stress 100

execute store result score @s constant_stress run resource get @s create_automaton:stress_constant-stress