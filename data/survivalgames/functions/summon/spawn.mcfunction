# SURVIVAL GAMES INIT SPAWN POD


execute as @e[tag=summon_spawn] at @s run execute positioned ~ ~ ~ run kill @e[tag=spawn,distance=..1,limit=1]
execute as @e[tag=summon_spawn] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["spawn"]}
execute as @e[tag=summon_spawn] at @s run tellraw @p {"text":"Created SPAWN POD","color":"green","bold":true}
execute as @e[tag=summon_spawn] at @s run kill @s