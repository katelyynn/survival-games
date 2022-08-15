# SG BLOCK SPAWNING


execute if score started internal matches -1 as @e[tag=taken,tag=spawn] at @s run setblock ~-1 ~1 ~ glass
execute if score started internal matches -1 as @e[tag=taken,tag=spawn] at @s run setblock ~ ~1 ~-1 glass
execute if score started internal matches -1 as @e[tag=taken,tag=spawn] at @s run setblock ~1 ~1 ~ glass
execute if score started internal matches -1 as @e[tag=taken,tag=spawn] at @s run setblock ~ ~1 ~1 glass



execute unless score started internal matches -1 as @e[tag=taken,tag=spawn] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 air replace glass