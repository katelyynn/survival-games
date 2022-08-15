# SG main loop


# welcome notice
## designed for map, appears when game is not in progress
## https://GSOT.plexion.dev/library/survivalgamesmap
execute if score started internal matches 0 run title @a actionbar ["",{"text":"Welcome! ","color":"gold","bold":true},{"text":"To start the next game, run "},{"text":"/function sg:reset","color":"yellow"},{"text":" then "},{"text":"/function sg:start","color":"yellow"}]


# debug mode
## used for marking custom items
execute if score debug internal matches 1 run function sg:debug

# custom items
function sg:summon/main

# border
execute if score started internal matches 1 unless score border_change internal matches 1 as @e[tag=border_trans] at @s facing entity @e[tag=bordercentre,tag=temp] feet unless entity @e[tag=bordercentre,tag=temp,distance=..5] run tp ^ ^ ^0.036
execute if score started internal matches 1 unless score border_change internal matches 1 as @e[tag=border_trans] at @s run worldborder center ~ ~
execute if score started internal matches 1 unless score border_change internal matches 1 as @e[tag=border_trans] at @s run tag @e[tag=bordercentre,tag=temp,distance=..5] remove temp

# time
execute if score started internal matches 1 run function sg:time
## display if in debug mode
execute if score started internal matches 1 if score debug internal matches 1.. run title @a actionbar {"score":{"name":"time_s","objective":"internal"},"color":"gold","bold":true,"italic":true}

# reset
## place into spawn pods
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @s add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @a[distance=..1.5] add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s unless entity @a[distance=..1.5] run tag @s remove taken
execute if score reset internal matches 1 as @a at @s unless entity @e[tag=spawn,distance=..1.5] run tag @s remove taken
## teleport players
execute if score reset internal matches 1 run function sg:reset/players

# pre-start
## effect slowness
execute if score started internal matches -1 run effect give @a[tag=taken] slowness 1 255 true
## remove tags for reset
execute unless score started internal matches -1 run tag @a[tag=taken] remove taken
## reset custom blocks
function sg:reset/blocks

# track deaths
execute as @a at @s if score @s death matches 1.. if score started internal matches 1 run function sg:death

# track victory
execute as @a if score alive players matches ..1 if score started internal matches 1 run function sg:win