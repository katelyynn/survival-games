# HUNGER GAMES INIT CHEST

# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND
# 4 - NETHERITE


# 0 - Copper
execute as @e[tag=summon_r0] at @s run execute positioned ~ ~2 ~ run kill @e[tag=rating,distance=..1,limit=1]
execute as @e[tag=summon_r0] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r0"]}
execute as @e[tag=summon_r0] at @s run tellraw @a {"text":"Created COPPER chest","color":"dark_red","bold":true}
execute as @e[tag=summon_r0] at @s run kill @s

# 1 - Iron
execute as @e[tag=summon_r1] at @s run execute positioned ~ ~2 ~ run kill @e[tag=rating,distance=..1,limit=1]
execute as @e[tag=summon_r1] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r1"]}
execute as @e[tag=summon_r1] at @s run tellraw @a {"text":"Created IRON chest","color":"white","bold":true}
execute as @e[tag=summon_r1] at @s run kill @s

# 2 - Gold
execute as @e[tag=summon_r2] at @s run execute positioned ~ ~2 ~ run kill @e[tag=rating,distance=..1,limit=1]
execute as @e[tag=summon_r2] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r2"]}
execute as @e[tag=summon_r2] at @s run tellraw @a {"text":"Created GOLD chest","color":"gold","bold":true}
execute as @e[tag=summon_r2] at @s run kill @s

# 3 - Diamond
execute as @e[tag=summon_r3] at @s run execute positioned ~ ~2 ~ run kill @e[tag=rating,distance=..1,limit=1]
execute as @e[tag=summon_r3] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r3"]}
execute as @e[tag=summon_r3] at @s run tellraw @a {"text":"Created DIAMOND chest","color":"aqua","bold":true}
execute as @e[tag=summon_r3] at @s run kill @s

# 4 - Netherite
execute as @e[tag=summon_r4] at @s run execute positioned ~ ~2 ~ run kill @e[tag=rating,distance=..1,limit=1]
execute as @e[tag=summon_r4] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r4"]}
execute as @e[tag=summon_r4] at @s run tellraw @a {"text":"Created NETHERITE chest","color":"black","bold":true}
execute as @e[tag=summon_r4] at @s run kill @s