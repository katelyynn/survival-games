# SURVIVAL GAMES main loop


# welcome notice
## used for map only
## https://GSOT.plexion.dev/library/survivalgamesmap
execute if score started internal matches 0 run title @a actionbar ["",{"text":"Welcome! ","color":"gold","bold":true},{"text":"To start the next game, run "},{"text":"/function sg:reset","color":"yellow"},{"text":" then "},{"text":"/function sg:start","color":"yellow"}]

# SCANNING
execute if score scanning internal matches 1 run function sg:scanning/scanning
execute if score scanning internal matches 1 run title @a actionbar {"text":"SCANNING CHEST LOCATIONS.. DO NOT START","color":"green","bold":true}

# DEBUG
execute if score debug internal matches 1 run function sg:debug

# ITEMS
function sg:summon/chest
function sg:summon/spawn
function sg:summon/copy
function sg:summon/worldborder
function sg:summon/supply_item

# SUPPLY
#execute as @e[tag=supply,tag=temp2] at @s if block ~ ~ ~ barrel run tag @s remove temp2
#execute as @e[tag=supply,tag=!temp2] at @s if block ~ ~ ~ barrel{Items:[]} run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1
#execute as @e[tag=supply,tag=!temp2] at @s if block ~ ~ ~ barrel{Items:[]} run playsound minecraft:entity.generic.explode block @a ~ ~ ~
#execute as @e[tag=supply,tag=!temp2] at @s if block ~ ~ ~ barrel{Items:[]} run setblock ~ ~ ~ air
#execute as @e[type=falling_block] at @s run particle flame ~ ~ ~ 0 0 0 0 2

# BORDER
execute if score started internal matches 1 unless score border_change internal matches 1 as @e[tag=border_trans] at @s facing entity @e[tag=bordercentre,tag=temp] feet unless entity @e[tag=bordercentre,tag=temp,distance=..5] run tp ^ ^ ^0.035
execute if score started internal matches 1 unless score border_change internal matches 1 as @e[tag=border_trans] at @s run worldborder center ~ ~
execute if score started internal matches 1 unless score border_change internal matches 1 as @e[tag=border_trans] at @s run tag @e[tag=bordercentre,tag=temp,distance=..5] remove temp

# TIME
execute if score started internal matches 1 run function sg:time
execute if score started internal matches 1 if score debug internal matches 1.. run title @a actionbar {"score":{"name":"time_s","objective":"internal"},"color":"gold","bold":true,"italic":true}

# RESET
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @s add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @a[distance=..1.5] add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s unless entity @a[distance=..1.5] run tag @s remove taken
execute if score reset internal matches 1 as @a at @s unless entity @e[tag=spawn,distance=..1.5] run tag @s remove taken

execute if score reset internal matches 1 run function sg:reset/players

execute if score started internal matches -1 run effect give @a[tag=taken] slowness 1 255 true

execute unless score started internal matches -1 run tag @a[tag=taken] remove taken

function sg:reset/blocks

# DEATH
execute as @a if score @s death matches 1.. if score started internal matches 1 run function sg:death

# VICTORY
execute as @a if score alive players matches ..1 if score started internal matches 1 run function sg:victory