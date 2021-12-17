# HUNGER GAMES BORDER


scoreboard players set border_change internal 1

tp @e[tag=border] 0 200 0

execute store result score border_time internal run scoreboard players get time_s internal

# Randomly find location
execute as @e[tag=border] at @s run spreadplayers 0 0 10 150 false @s
execute as @e[tag=border] at @s run tp @s @e[tag=bordercentre,sort=nearest,limit=1]
# Select nearest border centre
execute as @e[tag=border] at @s run tag @e[tag=bordercentre,sort=nearest,limit=1] add temp

# Store position
execute store result score border_x internal run data get entity @e[tag=bordercentre,tag=temp,limit=1] Pos[0]
execute store result score border_z internal run data get entity @e[tag=bordercentre,tag=temp,limit=1] Pos[2]

# Alert
tellraw @a [{"text":"The border is closing in on (","color":"yellow"},{"score":{"name":"border_x","objective":"internal"},"color":"gold","bold":true},{"text":", "},{"score":{"name":"border_z","objective":"internal"},"color":"gold","bold":true},{"text":") - be careful!"}]

scoreboard players set border_change internal 0