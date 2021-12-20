# SURVIVAL GAMES SCANNING
# For moving on the x axis


# if chest is found
execute as @e[tag=scan,limit=1] at @s if block ~ 50 ~ #survivalgames:chest_loot run function survivalgames:identify_chest

# reset
scoreboard players set s6 internal 0
scoreboard players set s5 internal 0
scoreboard players set s4 internal 0
scoreboard players set s3 internal 0
scoreboard players set s2 internal 0

# 5 blocks
execute store result score temp_x4 internal run data get entity @e[tag=scan,limit=1] Pos[0]
scoreboard players operation temp_x4 internal -= 5 internal
# 4 blocks
execute store result score temp_x3 internal run data get entity @e[tag=scan,limit=1] Pos[0]
scoreboard players operation temp_x3 internal -= 4 internal
# 3 blocks
execute store result score temp_x2 internal run data get entity @e[tag=scan,limit=1] Pos[0]
scoreboard players operation temp_x2 internal -= 3 internal
# 2 blocks
execute store result score temp_x internal run data get entity @e[tag=scan,limit=1] Pos[0]
scoreboard players operation temp_x internal -= 2 internal
# teleport
execute as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless block ~-3 50 ~ #survivalgames:chest_loot unless block ~-4 50 ~ #survivalgames:chest_loot unless block ~-5 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global unless score temp_x2 internal <= lastx global unless score temp_x3 internal <= lastx global unless score temp_x4 internal <= lastx global run scoreboard players set s6 internal 1
execute as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless block ~-3 50 ~ #survivalgames:chest_loot unless block ~-4 50 ~ #survivalgames:chest_loot unless block ~-5 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global unless score temp_x2 internal <= lastx global unless score temp_x3 internal <= lastx global unless score temp_x4 internal <= lastx global run tp @s ~-6 ~ ~

# 4 blocks
execute if score s6 internal matches 0 store result score temp_x3 internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute if score s6 internal matches 0 run scoreboard players operation temp_x3 internal -= 4 internal
# 3 blocks
execute if score s6 internal matches 0 store result score temp_x2 internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute if score s6 internal matches 0 run scoreboard players operation temp_x2 internal -= 3 internal
# 2 blocks
execute if score s6 internal matches 0 store result score temp_x internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute if score s6 internal matches 0 run scoreboard players operation temp_x internal -= 2 internal
# teleport
execute if score s6 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless block ~-3 50 ~ #survivalgames:chest_loot unless block ~-4 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global unless score temp_x2 internal <= lastx global unless score temp_x3 internal <= lastx global run scoreboard players set s5 internal 1
execute if score s6 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless block ~-3 50 ~ #survivalgames:chest_loot unless block ~-4 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global unless score temp_x2 internal <= lastx global unless score temp_x3 internal <= lastx global run tp @s ~-5 ~ ~

# 3 blocks
execute if score s6 internal matches 0 if score s5 internal matches 0 store result score temp_x2 internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute if score s6 internal matches 0 if score s5 internal matches 0 run scoreboard players operation temp_x2 internal -= 3 internal
# 2 blocks
execute if score s6 internal matches 0 if score s5 internal matches 0 store result score temp_x internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute if score s6 internal matches 0 if score s5 internal matches 0 run scoreboard players operation temp_x internal -= 2 internal
# teleport
execute if score s6 internal matches 0 if score s5 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless block ~-3 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global unless score temp_x2 internal <= lastx global run scoreboard players set s4 internal 1
execute if score s6 internal matches 0 if score s5 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless block ~-3 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global unless score temp_x2 internal <= lastx global run tp @s ~-4 ~ ~

# 2 blocks
execute if score s6 internal matches 0 if score s5 internal matches 0 if score s4 internal matches 0 store result score temp_x internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute if score s6 internal matches 0 if score s5 internal matches 0 if score s4 internal matches 0 run scoreboard players operation temp_x internal -= 2 internal
# teleport
execute if score s6 internal matches 0 if score s5 internal matches 0 if score s4 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global run scoreboard players set s3 internal 1
execute if score s6 internal matches 0 if score s5 internal matches 0 if score s4 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot unless block ~-2 50 ~ #survivalgames:chest_loot unless score temp_x internal <= lastx global run tp @s ~-3 ~ ~


# extras
execute if score s6 internal matches 0 if score s5 internal matches 0 if score s3 internal matches 0 if score s4 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot run scoreboard players set s2 internal 1
execute if score s6 internal matches 0 if score s5 internal matches 0 if score s3 internal matches 0 if score s4 internal matches 0 as @e[tag=scan,limit=1] at @s unless block ~-1 50 ~ #survivalgames:chest_loot run tp @s ~-2 ~ ~

execute if score s6 internal matches 0 if score s5 internal matches 0 if score s3 internal matches 0 if score s4 internal matches 0 if score s2 internal matches 0 as @e[tag=scan,limit=1] at @s if block ~-1 50 ~ #survivalgames:chest_loot run tp @s ~-1 ~ ~