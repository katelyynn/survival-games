scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

execute unless score supply_time internal = time_s internal if score time_s internal = first_supply global run function survivalgames:summon/supply
execute unless score supply_time internal = time_s internal if score time_s internal = second_supply global run function survivalgames:summon/supply
execute unless score supply_time internal = time_s internal if score time_s internal = third_supply global run function survivalgames:summon/supply

execute unless score border_time internal = time_s internal if score time_s internal = close_border global run worldborder set 30 300
execute unless score border_time internal = time_s internal if score time_s internal = first_bordermove global run function survivalgames:border
execute unless score border_time internal = time_s internal if score time_s internal = second_bordermove global run function survivalgames:border