# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND
# 4 - NETHERITE


# 0
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ waxed_copper_block run fill ~ 106 ~ ~ 106 ~ chest replace air

# 1
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ iron_block run fill ~ 107 ~ ~ 107 ~ chest replace air

# 2
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ gold_block run fill ~ 108 ~ ~ 108 ~ chest replace air

# 3
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ diamond_block run fill ~ 109 ~ ~ 109 ~ chest replace air

# 4
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ netherite_block run fill ~ 110 ~ ~ 110 ~ chest replace air


execute store result entity @e[tag=scan,limit=1] Pos[1] double 1 run scoreboard players get lasty global