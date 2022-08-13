# SURVIVAL GAMES SCANNING
# For moving on the y axis


# if chest is found
execute as @e[tag=scan,limit=1] at @s if block ~ ~ ~ chest run function sg:found_chest

# reset
scoreboard players set y4 internal 0
scoreboard players set y3 internal 0
scoreboard players set y2 internal 0

# tp 4 blocks if possible
execute as @e[tag=scan,limit=1] at @s unless block ~ ~ ~ chest unless block ~ ~1 ~ chest unless block ~ ~2 ~ chest unless block ~ ~3 ~ chest run scoreboard players set y4 internal 1
execute as @e[tag=scan,limit=1] at @s unless block ~ ~ ~ chest unless block ~ ~1 ~ chest unless block ~ ~2 ~ chest unless block ~ ~3 ~ chest run tp @s ~ ~4 ~

# tp 3 blocks if possible
execute unless score y4 internal matches 1 as @e[tag=scan,limit=1] at @s unless block ~ ~ ~ chest unless block ~ ~1 ~ chest unless block ~ ~2 ~ chest run scoreboard players set y3 internal 1
execute unless score y4 internal matches 1 as @e[tag=scan,limit=1] at @s unless block ~ ~ ~ chest unless block ~ ~1 ~ chest unless block ~ ~2 ~ chest run tp @s ~ ~3 ~

# tp 2 blocks if possible
execute unless score y4 internal matches 1 unless score y3 internal matches 1 as @e[tag=scan,limit=1] at @s unless block ~ ~ ~ chest unless block ~ ~1 ~ chest run scoreboard players set y2 internal 1
execute unless score y4 internal matches 1 unless score y3 internal matches 1 as @e[tag=scan,limit=1] at @s unless block ~ ~ ~ chest unless block ~ ~1 ~ chest run tp @s ~ ~2 ~


# or only tp 1
execute unless score y4 internal matches 1 unless score y3 internal matches 1 as @e[tag=scan,limit=1] at @s unless score y2 internal matches 1 run tp @s ~ ~1 ~