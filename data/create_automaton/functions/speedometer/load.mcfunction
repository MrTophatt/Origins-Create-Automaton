tellraw @a [{"text":"Speed Display >> ","color":"blue"},{"text":"Reloaded","color":"white"}]
tellraw @a ["",{"text":"Speed Display >> ","color":"blue"},{"text":"Credits","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"SilicatYT, NOPEName (Square Root Calculator)","color":"white"}]}}]

scoreboard objectives add Pos0 dummy
scoreboard objectives add Pos2 dummy
scoreboard objectives add Constant dummy
scoreboard objectives add SquareRoot dummy

scoreboard players set $Constant2 Constant 2
scoreboard players set $Constant100 Constant 100
