scoreboard players operation @s multipliedCount = @s damage_taken
scoreboard players operation @s multipliedCount *= #multiplier damageToStressMultiplier
resource operation @s create_automaton:stress_stress-meter += @s multipliedCount