# SG game reset
## resets all aspects of the game for next round


# remove tags related to border
tag @e[tag=bordercentre] remove temp
## reset border position
tp @e[tag=border] 0 200 0
tp @e[tag=border_trans] 0 200 0
## control border
worldborder center 0 0
worldborder set 60

scoreboard players reset border_time internal
scoreboard players reset supply_time internal

# clear chests
function sg:chest/clear

# reset scores
scoreboard players reset @a death
scoreboard players reset @a kills
scoreboard players reset alive players
execute as @a run scoreboard players add alive players 1
# set game state
scoreboard players set period internal 0

# supply drops
## remove old drops
execute as @e[tag=supply] at @s run fill ~ ~ ~ ~ ~2 ~ air replace #sg:remove
execute as @e[tag=supply] at @s run fill ~ ~-2 ~ ~ ~6 ~ air replace barrel
execute as @e[tag=supply] run tag @s remove dropped
execute as @e[tag=supply] run tag @s remove temp2

# kill entities from previous round
kill @e[type=item]
kill @e[type=arrow]

# reset timer
scoreboard players set time internal 0
scoreboard players set time_s internal 0

# reset XP
xp set @a 0 levels
xp set @a 0 points

# reset player states
clear @a[tag=!avoid_reset]
gamemode adventure @a[tag=!avoid_reset]



scoreboard players set reset internal 1