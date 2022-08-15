# SG /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add death deathCount
scoreboard objectives add kills playerKillCount


execute unless score defaults internal matches 1.. run function sg:defaults