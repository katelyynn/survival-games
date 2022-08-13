execute store result score x internal run data get entity @e[tag=scan,limit=1] Pos[0]
execute store result score y internal run data get entity @e[tag=scan,limit=1] Pos[1]
execute store result score z internal run data get entity @e[tag=scan,limit=1] Pos[2]

# x
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] unless score x internal <= lastx global if score y internal = lasty global run function sg:scanning/move_x
# z
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] unless score z internal = lastz global if score x internal <= lastx global if score y internal = lasty global run function sg:scanning/move_z
# y
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] unless score y internal >= firsty global run function sg:scanning/move_y
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] if score y internal >= firsty global run execute store result entity @e[tag=scan,limit=1] Pos[1] double 1 run scoreboard players get lasty global
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] if score z internal <= lastz global if score x internal <= lastx global run title @a actionbar {"text":"SCANNING FINISHED!","color":"green","bold":true}
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] if score z internal <= lastz global if score x internal <= lastx global run function sg:loot
execute if score scanning internal matches 1 as @e[tag=scan,limit=1] if score z internal <= lastz global if score x internal <= lastx global run scoreboard players set scanning internal 0