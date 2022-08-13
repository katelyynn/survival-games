scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

execute unless score supply_time internal = time_s internal if score time_s internal = supply_drop_1 global run function sg:summon/supply
execute unless score supply_time internal = time_s internal if score time_s internal = supply_drop_2 global run function sg:summon/supply
execute unless score supply_time internal = time_s internal if score time_s internal = supply_drop_3 global run function sg:summon/supply

execute unless score border_time internal = time_s internal if score time_s internal = close_border global run worldborder set 30 380
execute unless score border_time internal = time_s internal if score time_s internal = border_move_1 global run function sg:border
execute unless score border_time internal = time_s internal if score time_s internal = border_move_2 global run function sg:border