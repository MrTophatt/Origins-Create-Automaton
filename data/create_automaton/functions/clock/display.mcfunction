execute store result score time_ticks TimeTracker run time query daytime

execute store result score time_hours TimeTracker run time query daytime
scoreboard players operation time_hours TimeTracker /= 1000 Constants
scoreboard players operation time_hours TimeTracker += 6 Constants
execute if score time_hours TimeTracker >= 24 Constants run scoreboard players operation time_hours TimeTracker -= 24 Constants 

execute store result score time_12hours TimeTracker run time query daytime
scoreboard players operation time_12hours TimeTracker /= 1000 Constants
scoreboard players operation time_12hours TimeTracker += 6 Constants
execute if score time_12hours TimeTracker > 24 Constants run scoreboard players operation time_12hours TimeTracker -= 24 Constants 
execute if score time_12hours TimeTracker > 12 Constants run scoreboard players operation time_12hours TimeTracker -= 12 Constants 

execute store result score time_mins TimeTracker run time query daytime
scoreboard players operation time_mins TimeTracker %= 1000 Constants
scoreboard players operation time_mins TimeTracker *= 6 Constants
scoreboard players operation time_mins TimeTracker /= 100 Constants

# 24-hour clock tracker
execute unless score 12hour TimeTracker = 1 Constants unless score time_mins TimeTracker < 10 Constants run title @s actionbar [{"score":{"name":"time_hours","objective":"TimeTracker"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"score":{"name":"time_mins","objective":"TimeTracker"},"color":"aqua"}]
execute unless score 12hour TimeTracker = 1 Constants if score time_mins TimeTracker < 10 Constants run title @s actionbar [{"score":{"name":"time_hours","objective":"TimeTracker"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"text":"0","color":"aqua"},{"score":{"name":"time_mins","objective":"TimeTracker"},"color":"aqua"}]

# AM tracker
execute if score 12hour TimeTracker = 1 Constants unless score time_hours TimeTracker > 12 Constants unless score time_mins TimeTracker < 10 Constants run title @s actionbar [{"score":{"name":"time_12hours","objective":"TimeTracker"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"score":{"name":"time_mins","objective":"TimeTracker"},"color":"aqua"},{"text":" AM","color":"dark_aqua"}]
execute if score 12hour TimeTracker = 1 Constants unless score time_hours TimeTracker > 12 Constants if score time_mins TimeTracker < 10 Constants run title @s actionbar [{"score":{"name":"time_12hours","objective":"TimeTracker"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"text":"0","color":"aqua"},{"score":{"name":"time_mins","objective":"TimeTracker"},"color":"aqua"},{"text":" AM","color":"dark_aqua"}]

# PM tracker
execute if score 12hour TimeTracker = 1 Constants if score time_hours TimeTracker > 12 Constants unless score time_mins TimeTracker < 10 Constants run title @s actionbar [{"score":{"name":"time_12hours","objective":"TimeTracker"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"score":{"name":"time_mins","objective":"TimeTracker"},"color":"aqua"},{"text":" PM","color":"dark_aqua"}]
execute if score 12hour TimeTracker = 1 Constants if score time_hours TimeTracker > 12 Constants if score time_mins TimeTracker < 10 Constants run title @s actionbar [{"score":{"name":"time_12hours","objective":"TimeTracker"},"color":"aqua"},{"text":":","color":"dark_aqua"},{"text":"0","color":"aqua"},{"score":{"name":"time_mins","objective":"TimeTracker"},"color":"aqua"},{"text":" PM","color":"dark_aqua"}]