# SURVIVAL GAMES Prepare
# Ran on every /reload


# Create the required scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add death deathCount

# Run through and set default scoreboards
execute unless score defaults global matches 1 run function survivalgames:defaults