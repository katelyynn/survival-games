# SG border


# remove tags related to border
tag @e[tag=bordercentre] remove temp

scoreboard players set border_change internal 1

tp @e[tag=border] 0 200 0

execute store result score border_time internal run scoreboard players get time_s internal

# pick random location
execute as @e[tag=border] at @s run spreadplayers 0 0 10 150 false @s
execute as @e[tag=border] at @s run tp @s @e[tag=bordercentre,sort=nearest,limit=1]
# find nearest marked location
## marked by #bordercentre entities
execute as @e[tag=border] at @s run tag @e[tag=bordercentre,sort=nearest,limit=1] add temp

# store position
execute store result score border_x internal run data get entity @e[tag=bordercentre,tag=temp,limit=1] Pos[0]
execute store result score border_z internal run data get entity @e[tag=bordercentre,tag=temp,limit=1] Pos[2]

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"The border is closing in on (","color":"yellow"},{"score":{"name":"border_x","objective":"internal"},"color":"gold","bold":true},{"text":" / ","color":"yellow"},{"score":{"name":"border_z","objective":"internal"},"color":"gold","bold":true},{"text":") - be careful!","color":"yellow"}]


scoreboard players set border_change internal 0