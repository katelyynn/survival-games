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

# RESET
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @s add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s if entity @a[distance=..1.5] run tag @a[distance=..1.5] add taken
execute if score reset internal matches 1 as @e[tag=spawn] at @s unless entity @a[distance=..1.5] run tag @s remove taken
execute if score reset internal matches 1 as @a at @s unless entity @e[tag=spawn,distance=..1.5] run tag @s remove taken

execute if score reset internal matches 1 run function hungergames:reset/players

effect give @a[tag=taken] slowness 1 255 true