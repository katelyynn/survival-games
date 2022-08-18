# loot based on chest

# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND


# 0
execute as @e[tag=r0] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/copper"}

# 1
execute as @e[tag=r1] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/iron"}

# 2
execute as @e[tag=r2] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/gold"}

# 3
execute as @e[tag=r3] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/diamond"}


execute if score debug internal matches 1.. run title @a actionbar {"text":"LOOTED ALL CHESTS!","color":"green","bold":true}