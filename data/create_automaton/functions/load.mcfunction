# Constant Stress Objectives
scoreboard objectives add stress_meter dummy
scoreboard objectives add constant_stress dummy

# Clock Objectives
scoreboard objectives add TimeTracker dummy
scoreboard players set time_ticks TimeTracker 0
scoreboard players set time_hours TimeTracker 0
scoreboard players set time_12hours TimeTracker 0
scoreboard players set time_mins TimeTracker 0

scoreboard objectives add Constants dummy
scoreboard players set 1000 Constants 1000
scoreboard players set 100 Constants 100
scoreboard players set 24 Constants 24
scoreboard players set 12 Constants 12
scoreboard players set 10 Constants 10
scoreboard players set 6 Constants 6
scoreboard players set 2 Constants 2
scoreboard players set 1 Constants 1

# Item Count Objectives
scoreboard objectives add itemCount dummy
scoreboard objectives add multipliedCount dummy
scoreboard objectives add multiplier dummy
scoreboard players set #multiplier multiplier 4

# Speedometer Reload Message and Objective Setup
tellraw @a [{"text":"Speed Display >> ","color":"blue"},{"text":"Reloaded","color":"white"}]
tellraw @a ["",{"text":"Speed Display >> ","color":"blue"},{"text":"Credits","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"SilicatYT, NOPEName (Square Root Calculator)","color":"white"}]}}]

scoreboard objectives add Pos0 dummy
scoreboard objectives add Pos2 dummy
scoreboard objectives add Constant dummy
scoreboard objectives add SquareRoot dummy

# Damage Taken Objectives
scoreboard objectives add hp dummy
scoreboard objectives add last_hp dummy
scoreboard objectives add damage_taken dummy
scoreboard objectives add baseStressAddition dummy
scoreboard objectives add damageToStressMultiplier dummy
scoreboard objectives add trainCasingDamageToStressMultiplier dummy
scoreboard players set #constant baseStressAddition 20
scoreboard players set #multiplier damageToStressMultiplier 7
scoreboard players set #multiplier trainCasingDamageToStressMultiplier 5