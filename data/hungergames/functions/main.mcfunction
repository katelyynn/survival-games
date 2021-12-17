# HUNGER GAMES MAIN LOOP


# SCANNING
execute if score scanning internal matches 1 run function hungergames:scanning/scanning
execute if score scanning internal matches 1 run title @a actionbar {"text":"SCANNING CHEST LOCATIONS.. DO NOT START","color":"green","bold":true}

# DEBUG
execute if score debug internal matches 1 run function hungergames:debug

# TNT
function hungergames:items/tnt

# ITEMS
function hungergames:summon/chest
function hungergames:summon/spawn
function hungergames:summon/copy
function hungergames:summon/worldborder
function hungergames:summon/supply_item

# BORDER
execute unless score border_change internal matches 1 as @e[tag=border_trans] at @s facing entity @e[tag=bordercentre,tag=temp] feet unless entity @e[tag=bordercentre,tag=temp,distance=..5] run tp ^ ^ ^0.005
execute unless score border_change internal matches 1 as @e[tag=border_trans] at @s run worldborder center ~ ~
execute unless score border_change internal matches 1 as @e[tag=border_trans] at @s run tag @e[tag=bordercentre,tag=temp,distance=..5] remove temp

# TIME
execute if score started internal matches 1 run function hungergames:time
execute if score started internal matches 1 run title @a actionbar {"score":{"name":"time_s","objective":"internal"},"color":"gold","bold":true,"italic":true}

# RESET
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @s add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @a[distance=..1.5] add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s unless entity @a[distance=..1.5] run tag @s remove taken
execute if score reset internal matches 1 as @a at @s unless entity @e[tag=spawn,distance=..1.5] run tag @s remove taken

execute if score reset internal matches 1 run function hungergames:reset/players

execute if score started internal matches -1 run effect give @a[tag=taken] slowness 1 255 true
execute if score started internal matches -1 run effect give @a[tag=taken] jump_boost 1 255 true

execute unless score started internal matches -1 run tag @a[tag=taken] remove taken

function hungergames:reset/blocks

# DEATH
execute as @a if score @s death matches 1.. if score started internal matches 1 run function hungergames:death

# VICTORY
execute as @a if score alive alive_players matches ..1 if score started internal matches 1 run function hungergames:victory