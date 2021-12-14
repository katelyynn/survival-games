# HUNGER GAMES START


function hungergames:loot
scoreboard players set started internal 1
tag @a remove taken
effect clear @a slowness
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
title @a title {"text":"THE GAME HAS STARTED!","color":"green","bold":true}

execute as @e[tag=spawn] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 10
execute as @e[tag=rating] at @s run particle minecraft:glow ~ ~-2 ~ 0 0 0 1 10