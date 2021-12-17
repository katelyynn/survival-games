execute as @e[tag=copyblockspawn] at @s run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~-101 ~
execute as @e[tag=copyblockspawn] at @s run summon minecraft:armor_stand ~ ~-101 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["copyblock"]}
execute as @e[tag=copyblockspawn] at @s if block ~ ~-102 ~ air run setblock ~ ~-102 ~ barrier
execute as @e[tag=copyblockspawn] at @s run tellraw @a {"text":"Created a COPY BLOCK, this will be cloned upon reset","color":"green","bold":true}
kill @e[tag=copyblockspawn]