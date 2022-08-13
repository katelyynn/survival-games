# SURVIVAL GAMES DEFAULT OPTIONS
# Will reset all settings and create any scoreboards/bossbars for first-time use
# Upon any reloads, this will not be ran again


# Scoreboards related to scanning (obsolete)
scoreboard players set scanning internal 0
scoreboard players set 1 internal -1
scoreboard players set 2 internal -2
scoreboard players set 3 internal -3
scoreboard players set 4 internal -4
scoreboard players set 5 internal -5
scoreboard players set firsty global 171
scoreboard players set lasty global 151
scoreboard players set firstx global 110
scoreboard players set firstz global 110
scoreboard players set lastx global -110
scoreboard players set lastz global -110

# Notice
scoreboard objectives add seen_notice dummy

# Supply drops
scoreboard players set first_supply global 120
scoreboard players set second_supply global 180
scoreboard players set third_supply global 240
summon armor_stand 0 250 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["find_supply"]}

# Border
summon armor_stand 0 200 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["border"]}
summon armor_stand 0 200 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["border_trans"]}
scoreboard players set first_bordermove global 110
scoreboard players set second_bordermove global 260

# Alive tracking
scoreboard objectives add alive_players dummy
scoreboard objectives modify alive_players displayname {"text":"SURVIVAL GAMES","color":"gold","bold":true}
scoreboard players reset alive alive_players

# Ensure defaults are not reset upon /reload
scoreboard players set defaults global 1