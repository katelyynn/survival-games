# SG lobby loop
## binds button functionality n things


# set gamemode
execute positioned 0 316 0 as @a[gamemode=spectator,distance=..12] run tp @s 0 315 0
execute positioned 0 316 0 as @a[gamemode=spectator,distance=..12] run gamemode adventure @s

# buttons
## START GAME
execute if block 0 316 4 stone_button[powered=true] run function sg:start
execute if block 0 316 4 stone_button[powered=true] run setblock 0 316 4 stone_button[powered=false]
## EXPLORE MAP
execute if block 0 316 -4 stone_button[powered=true] positioned 0 316 -4 as @p[distance=..3.5] run function sg:system/lobby/explore
execute if block 0 316 -4 stone_button[powered=true] run setblock 0 316 -4 stone_button[powered=false]