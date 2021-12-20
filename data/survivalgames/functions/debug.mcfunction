# SURVIVAL GAMES DEBUG PARTICLES


execute if score debug internal matches 1 as @e[tag=r0] at @s run particle minecraft:block waxed_copper_block ~ ~-1 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=r1] at @s run particle minecraft:block iron_block ~ ~-1 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=r2] at @s run particle minecraft:block gold_block ~ ~-1 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=r3] at @s run particle minecraft:block diamond_block ~ ~-1 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=r4] at @s run particle minecraft:block netherite_block ~ ~-1 ~ 0 0 0 1 1

execute if score debug internal matches 1 as @e[tag=spawn] at @s run particle minecraft:glow ~ ~-1 ~ 0 0 0 1 2

execute if score debug internal matches 1 as @e[tag=copyblock] at @s run particle minecraft:glow ~ ~-1 ~ 0 0 0 1 2

execute if score debug internal matches 1 as @e[tag=border] at @s run particle minecraft:nautilus ~ ~-1 ~ 0 0 0 1 2

execute if score debug internal matches 1 as @e[tag=border_trans] at @s run particle minecraft:angry_villager ~ ~-1 ~ 0 0 0 1 2