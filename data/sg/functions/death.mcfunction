# INFECTION PLAYER DEATH


# XP
execute as @a[scores={death=1..}] at @s run summon experience_bottle ~ ~ ~ {Motion:[0.1,0.7,0.0]}
execute as @a[scores={death=1..}] at @s run summon experience_bottle ~ ~ ~ {Motion:[-0.05,0.7,0.087]}
execute as @a[scores={death=1..}] at @s run summon experience_bottle ~ ~ ~ {Motion:[-0.05,0.7,-0.087]}

# Gamemode
gamemode spectator @a[scores={death=1..}]

# Announce
tellraw @a [{"selector":"@a[scores={death=1..}]","color":"dark_red","bold":true},{"text":" has been eliminated!","color":"red","bold":false}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s
# Bring down alive player counter
scoreboard players remove alive players 1

# Reset everything when done
scoreboard players reset @a[scores={death=1..}] death