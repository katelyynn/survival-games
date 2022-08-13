# SURVIVAL GAMES defaults


# scanning
## (deprecated)
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

# seen notice?
## used to describe mapmaking items
scoreboard objectives add seen_notice dummy

# supply drops
scoreboard players set supply_drop_1 global 120
scoreboard players set supply_drop_2 global 180
scoreboard players set supply_drop_3 global 240
summon armor_stand 0 250 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["find_supply"]}

# border
summon armor_stand 0 200 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["border"]}
summon armor_stand 0 200 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["border_trans"]}
scoreboard players set border_move_1 global 110
scoreboard players set border_move_2 global 260

# track alive players
scoreboard objectives add players dummy
scoreboard objectives modify players displayname {"text":"SURVIVAL GAMES","color":"gold","bold":true}
scoreboard players reset alive players


scoreboard players set defaults internal 1