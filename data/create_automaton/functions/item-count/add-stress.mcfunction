execute store result score @s itemCount run data get entity @s SelectedItem.Count
scoreboard players operation @s multipliedCount = @s itemCount
scoreboard players operation @s multipliedCount *= #multiplier multiplier
resource operation @s create_automaton:stress_stress-meter += @s multipliedCount