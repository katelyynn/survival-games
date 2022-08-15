# SG start
## will start instantly, avoiding countdown


scoreboard players set started internal 1
scoreboard players reset @a death
tag @a remove taken
tag @e remove temp

# track alive players
scoreboard players reset alive players
execute as @a run scoreboard players add alive players 1

# world
worldborder set 500 10

# loot chests
function sg:chest/loot

# announce
title @a title {"text":"SURVIVAL GAMES","color":"green","bold":true}
title @a subtitle {"text":"Let the games begin!"}
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"The game has started!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~

# effects
effect clear @a slowness
effect clear @a regeneration
effect clear @a saturation
## particles
execute as @e[tag=spawn] at @s run particle minecraft:glow ~ ~ ~ 0 0 0 1 10
execute as @e[tag=rating] at @s run particle minecraft:glow ~ ~-2 ~ 0 0 0 1 10

execute as @e[tag=copyblock] at @s run clone ~ ~ ~ ~ ~ ~ ~ ~100 ~

# give resistance at start
## aka. grace period
execute if score grace_period global matches 1.. run effect give @a resistance 5 255 true