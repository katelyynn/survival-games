# SG lobby loop
## binds button functionality n things


# world
worldborder set 1000

# reset XP
xp set @a 0 levels
xp set @a 0 points

# effects
effect give @a resistance 9999 255 true
effect give @a regeneration 9999 255 true
effect give @a saturation 9999 255 true

# detect team blocks
execute if score teams global matches 1.. as @a at @s if block ~ ~ ~ red_carpet run team join red
execute if score teams global matches 1.. as @a at @s if block ~ ~ ~ blue_carpet run team join blue
## clear
execute unless score teams global matches 1.. run team leave @a

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
## MODE
## <
execute if block 4 316 -1 stone_button[powered=true] positioned 4 316 -1 run scoreboard players remove mode global 1
execute if block 4 316 -1 stone_button[powered=true] run setblock 4 316 -1 stone_button[powered=false,facing=west]
## >
execute if block 4 316 1 stone_button[powered=true] positioned 4 316 1 run scoreboard players add mode global 1
execute if block 4 316 1 stone_button[powered=true] run setblock 4 316 1 stone_button[powered=false,facing=west]

# range check
execute unless score mode global matches 0.. run scoreboard players set mode global 0
execute unless score mode global matches ..1 run scoreboard players set mode global 1

# display
## MODE
execute if score mode global matches 0 run data merge block 4 316 0 {Color:"black",Text3:'{"text":"experience."}',Text2:'{"text":"The classic"}',Text1:'{"text":"NORMAL"}',GlowingText:1b}
execute if score mode global matches 1 run data merge block 4 316 0 {Color:"black",Text3:'{"text":"loot-tables!"}',Text2:'{"text":"Overpowered"}',Text1:'{"text":"BOOSTED","color":"light_purple"}',GlowingText:1b}