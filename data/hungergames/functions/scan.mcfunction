kill @e[type=armor_stand,tag=scan]
kill @e[tag=rating]
summon armor_stand 0 110 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["scan"],Marker:1b}

scoreboard players set count internal 0

execute store result entity @e[tag=scan,limit=1] Pos[0] double 1 run scoreboard players get firstx global
execute store result entity @e[tag=scan,limit=1] Pos[1] double 1 run scoreboard players get lasty global
execute store result entity @e[tag=scan,limit=1] Pos[2] double 1 run scoreboard players get firstz global

scoreboard players set scanning internal 1