# SG defaults


# supply drops
scoreboard players set supply_drop_1 global 75
scoreboard players set supply_drop_2 global 180
scoreboard players set supply_drop_3 global 280
kill @e[tag=find_supply]
summon armor_stand 0 250 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["find_supply"]}

# border
kill @e[tag=border]
kill @e[tag=border_trans]
summon armor_stand 0 200 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["border"]}
summon armor_stand 0 200 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["border_trans"]}
scoreboard players set border_move_1 global 60
scoreboard players set border_move_2 global 300
scoreboard players set close_border global 22

# teams
scoreboard players set teams global 0

# realms mode
## removes mentions to functions etc.
scoreboard players set realms global 0

# spectator lobby return height
scoreboard players set return_height internal 235

# players drop XP on death
scoreboard players set drop_xp_death global 1

# give resistance at start
## aka. grace period
scoreboard players set grace_period global 1

# snow particles
scoreboard players set snow_particles global 1

# track alive players
scoreboard objectives add players dummy
scoreboard objectives modify players displayname {"text":"SURVIVAL GAMES","color":"gold","bold":true}
scoreboard players reset alive players

# world
gamerule announceAdvancements false


scoreboard players set defaults internal 1