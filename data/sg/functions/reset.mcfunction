# SURVIVAL GAMES SPAWN RESET
# Resets every player into a pod.


tag @e[tag=bordercentre] remove temp

tp @e[tag=border] 0 200 0
tp @e[tag=border_trans] 0 200 0

function sg:clear_loot

scoreboard players reset @a death

worldborder center 0 0
worldborder set 60

scoreboard players reset alive alive_players
scoreboard players reset @a death
execute as @a run scoreboard players add alive alive_players 1

scoreboard players set started internal -1

# Supply drops
execute as @e[tag=supply] at @s run fill ~ ~ ~ ~ ~2 ~ air replace #sg:remove
execute as @e[tag=supply] at @s run fill ~ ~-2 ~ ~ ~6 ~ air replace barrel
execute as @e[tag=supply] run tag @s remove dropped
execute as @e[tag=supply] run tag @s remove temp2
kill @e[type=item]
kill @e[type=arrow]

scoreboard players set time internal 0
scoreboard players set time_s internal 0

xp set @a 0 levels
xp set @a 0 points

effect clear @a
effect give @a regeneration 9999 255 true
effect give @a saturation 9999 255 true
clear @a[tag=!avoid_reset]
gamemode adventure @a[tag=!avoid_reset]
kill @e[type=item]
scoreboard players set reset internal 1