# SG win
## return to lobby


effect clear @a
clear @a
xp set @a 0 levels
xp set @a 0 points
tag @a remove win

# clear teams
team leave @a

# reset to lobby
tp @a 0 315 0 0 0

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Game over!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.5


scoreboard players set period internal -1