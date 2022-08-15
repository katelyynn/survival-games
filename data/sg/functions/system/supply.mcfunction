# SG supply drops
## drops from a random location


execute store result score supply_time internal run scoreboard players get time_s internal

# pick random location
execute as @e[tag=find_supply] at @s run spreadplayers 0 0 10 150 false @s
# find nearest marked location
## marked by #supply entities
execute as @e[tag=find_supply] at @s run tag @e[tag=supply,tag=!dropped,sort=nearest,limit=1] add dropped
execute as @e[tag=find_supply] at @s run tag @e[tag=supply,sort=nearest,limit=1] add temp

# store position
execute store result score supply_x internal run data get entity @e[tag=supply,tag=temp,limit=1] Pos[0]
execute store result score supply_z internal run data get entity @e[tag=supply,tag=temp,limit=1] Pos[2]

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"A ","color":"yellow"},{"text":"SUPPLY CRATE","color":"gold","bold":true},{"text":" is dropping at (","color":"yellow"},{"score":{"name":"supply_x","objective":"internal"},"color":"gold","bold":true},{"text":" / ","color":"yellow"},{"score":{"name":"supply_z","objective":"internal"},"color":"gold","bold":true},{"text":") - get there quick!","color":"yellow"}]

# create entity
execute as @e[tag=supply,tag=temp] at @s run summon falling_block ~ 250 ~ {BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},TileEntityData:{LootTable:"sg:chests/diamond",CustomName:'{"text":"Supply Drop","color":"gold","italic":false}'},Time:1}
execute as @e[tag=supply,tag=temp] run tag @s add temp2


execute as @e[tag=supply,tag=temp] run tag @s remove temp