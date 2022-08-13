# SURVIVAL GAMES /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add death deathCount


execute unless score defaults internal matches 1.. run function sg:defaults