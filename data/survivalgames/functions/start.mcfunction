# SURVIVAL GAMES START


scoreboard players reset alive alive_players
scoreboard players reset @a death
execute as @a run scoreboard players add alive alive_players 1

worldborder set 500 5

tag @e remove temp

function survivalgames:loot
scoreboard players set started internal 1
tag @a remove taken
effect clear @a slowness
effect clear @a regeneration
effect clear @a saturation
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
title @a title {"text":"SURVIVAL GAMES","color":"green","bold":true}
title @a subtitle {"text":"by GSOT"}

execute as @e[tag=spawn] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 10
execute as @e[tag=rating] at @s run particle minecraft:glow ~ ~-2 ~ 0 0 0 1 10

execute as @e[tag=copyblock] at @s run clone ~ ~ ~ ~ ~ ~ ~ ~100 ~