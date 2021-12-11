# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND
# 4 - NETHERITE


# 0
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ waxed_copper_block run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r0"]}

# 1
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ iron_block run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r1"]}

# 2
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ gold_block run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r2"]}

# 3
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ diamond_block run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r3"]}

# 4
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ netherite_block run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rating","r4"]}