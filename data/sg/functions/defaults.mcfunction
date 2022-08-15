# SG defaults


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