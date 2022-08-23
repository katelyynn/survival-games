# SG border


# remove tags related to border
tag @e[tag=bordercentre] remove temp

scoreboard players set border_change internal 1

tp @e[tag=border] 0 200 0

scoreboard players operation border_time internal = time_s internal

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
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"⚠","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"The border is closing in on ","color":"gray"},{"score":{"name":"border_x","objective":"internal"},"color":"red"},{"text":", ","color":"gray"},{"score":{"name":"border_z","objective":"internal"},"color":"red"}]
# sfx
execute as @a at @s run playsound minecraft:block.note_block.bass player @s


scoreboard players set border_change internal 0