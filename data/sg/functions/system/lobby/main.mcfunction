# SG lobby loop
## binds button functionality n things


# get spectator height
execute as @a[gamemode=spectator] store result score @s spectator_height run data get entity @s Pos[1]

# set gamemode
execute as @a[gamemode=spectator] if score @s spectator_height >= return_height internal run tp @s 0 315 0
execute as @a[gamemode=spectator] if score @s spectator_height >= return_height internal run gamemode adventure @s

# buttons
## START GAME
execute if block 0 316 4 stone_button[powered=true] run function sg:start
execute if block 0 316 4 stone_button[powered=true] run setblock 0 316 4 stone_button[powered=false]
## EXPLORE MAP
execute if block 0 316 -4 stone_button[powered=true] positioned 0 316 -4 as @p[distance=..3.5] run function sg:system/lobby/explore
execute if block 0 316 -4 stone_button[powered=true] run setblock 0 316 -4 stone_button[powered=false,facing=south]