execute as @e[tag=rating] at @s run data remove block ~ ~-2 ~ Items
execute if score debug internal matches 1.. run title @a actionbar {"text":"CLEARED ALL CHEST LOOT","color":"green","bold":true}