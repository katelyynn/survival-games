# SG assign chest loot tables
## spawn eggs


# chest loot
## copper
execute as @e[tag=summon_r0] at @s run execute positioned ~ ~2 ~ run kill @e[tag=chest.tier,distance=..1,limit=1]
execute as @e[tag=summon_r0] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["chest_tier","chest_tier.0"]}
execute as @e[tag=summon_r0] at @s run tellraw @p {"text":"Assigned tier 0/3 loot table to block","color":"dark_red","bold":true}
execute as @e[tag=summon_r0] at @s run kill @s
## iron
execute as @e[tag=summon_r1] at @s run execute positioned ~ ~2 ~ run kill @e[tag=chest.tier,distance=..1,limit=1]
execute as @e[tag=summon_r1] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["chest_tier","chest_tier.1"]}
execute as @e[tag=summon_r1] at @s run tellraw @p {"text":"Assigned tier 1/3 loot table to block","color":"white","bold":true}
execute as @e[tag=summon_r1] at @s run kill @s
## gold
execute as @e[tag=summon_r2] at @s run execute positioned ~ ~2 ~ run kill @e[tag=chest.tier,distance=..1,limit=1]
execute as @e[tag=summon_r2] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["chest_tier","chest_tier.2"]}
execute as @e[tag=summon_r2] at @s run tellraw @p {"text":"Assigned tier 2/3 loot table to block","color":"gold","bold":true}
execute as @e[tag=summon_r2] at @s run kill @s
## diamond
execute as @e[tag=summon_r3] at @s run execute positioned ~ ~2 ~ run kill @e[tag=chest.tier,distance=..1,limit=1]
execute as @e[tag=summon_r3] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["chest_tier","chest_tier.3"]}
execute as @e[tag=summon_r3] at @s run tellraw @p {"text":"Assigned tier 3/3 loot table to block","color":"aqua","bold":true}
execute as @e[tag=summon_r3] at @s run kill @s