function hungergames:loot
execute as @e[tag=spawn] at @s run fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace glass
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~
title @a title {"text":"THE GAME HAS STARTED!","color":"green","bold":true}