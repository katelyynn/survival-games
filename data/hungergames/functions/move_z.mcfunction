# HUNGER GAMES SCANNING
# For moving on the z axis


execute store result entity @e[tag=scan,limit=1] Pos[0] double 1 run scoreboard players get firstx global
execute as @e[tag=scan,limit=1] at @s run tp @s ~ ~ ~-1