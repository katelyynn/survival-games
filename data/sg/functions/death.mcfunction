# SG death


# xp
summon experience_bottle ~ ~ ~ {Motion:[0.1,0.7,0.0]}
summon experience_bottle ~ ~ ~ {Motion:[-0.05,0.7,0.087]}
summon experience_bottle ~ ~ ~ {Motion:[-0.05,0.7,-0.087]}

# world
gamemode spectator @s

# announce
tellraw @a [{"selector":"@a[scores={death=1..}]","color":"dark_red","bold":true},{"text":" has been eliminated!","color":"red","bold":false}]
# sfx
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s


scoreboard players remove alive players 1
scoreboard players reset @s death