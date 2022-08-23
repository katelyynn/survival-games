# SG supply drops
## drops from a random location


execute store result score supply_time internal run scoreboard players get time_s internal

# pick random location
execute as @e[tag=find_supply] at @s run spreadplayers 0 0 10 150 false @s
# find nearest marked location
## marked by #supply entities
execute as @e[tag=find_supply] at @s run tag @e[tag=supply,tag=!dropped,sort=nearest,limit=1] add temp
execute as @e[tag=find_supply] at @s run tag @e[tag=supply,tag=temp] add dropped

# store position
execute store result score supply_x internal run data get entity @e[tag=supply,tag=temp,limit=1] Pos[0]
execute store result score supply_z internal run data get entity @e[tag=supply,tag=temp,limit=1] Pos[2]

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"☄","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"A supply drop is landing at ","color":"gray"},{"score":{"name":"supply_x","objective":"internal"},"color":"gold"},{"text":", ","color":"gray"},{"score":{"name":"supply_z","objective":"internal"},"color":"gold"}]
# sfx
execute as @a at @s run playsound minecraft:block.note_block.chime player @s

# create entity
execute as @e[tag=supply,tag=temp] at @s run summon falling_block ~ 250 ~ {BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},TileEntityData:{LootTable:"sg:chests/diamond",CustomName:'{"text":"Supply Drop","color":"gold","italic":false}'},Time:1}
execute as @e[tag=supply,tag=temp] run tag @s add temp2


execute as @e[tag=supply,tag=temp] run tag @s remove temp