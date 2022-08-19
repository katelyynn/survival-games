# loot based on chest

# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND


# normal
## copper
execute if score mode global matches 0 as @e[tag=r0] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/copper"}
## iron
execute if score mode global matches 0 as @e[tag=r1] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/iron"}
## gold
execute if score mode global matches 0 as @e[tag=r2] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/gold"}
## diamond
execute if score mode global matches 0 as @e[tag=r3] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/diamond"}

# boosted
## copper
execute if score mode global matches 1 as @e[tag=r0] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/copper"}
## iron
execute if score mode global matches 1 as @e[tag=r1] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/iron"}
## gold
execute if score mode global matches 1 as @e[tag=r2] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/gold"}
## diamond
execute if score mode global matches 1 as @e[tag=r3] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/diamond"}


execute if score debug internal matches 1.. run title @a actionbar {"text":"LOOTED ALL CHESTS!","color":"green","bold":true}