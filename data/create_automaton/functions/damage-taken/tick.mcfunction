# Update last_hp BEFORE the check
scoreboard players operation @s last_hp = @s hp

# Set the damage_taken to last_hp
scoreboard players operation @s damage_taken = @s last_hp

# Store current health in `hp`
execute as @s store result score @s hp run data get entity @s Health 5

# Subtract last_hp from current to get damage taken, making sure it doesn't go below 0
scoreboard players operation @s damage_taken -= @s hp
execute if score @s damage_taken matches ..0 run scoreboard players set @s damage_taken 0

execute if score @s damage_taken matches 1.. run resource operation @s create_automaton:stress_stress-meter += #constant baseStressAddition
# Damage types depending on train casing or not
execute if entity @s[tag=!hasTrainCasing] run function create_automaton:damage-taken/regular-damage
execute if entity @s[tag=hasTrainCasing] run function create_automaton:damage-taken/train-casing
