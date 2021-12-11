# loot based on chest

# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND
# 4 - NETHERITE

# 0
execute as @e[tag=r0] at @s run loot insert ~ ~-2 ~ loot hungergames:chests/copper

# 1
execute as @e[tag=r1] at @s run loot insert ~ ~-2 ~ loot hungergames:chests/iron

# 2
execute as @e[tag=r2] at @s run loot insert ~ ~-2 ~ loot hungergames:chests/gold

# 3
execute as @e[tag=r3] at @s run loot insert ~ ~-2 ~ loot hungergames:chests/diamond

# 4
execute as @e[tag=r4] at @s run loot insert ~ ~-2 ~ loot hungergames:chests/netherite

title @a actionbar {"text":"LOOTED ALL CHESTS!","color":"green","bold":true}