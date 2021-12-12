execute as @r[tag=!taken] at @s run tp @s @e[tag=spawn,limit=1]
execute unless entity @a[tag=!taken] run title @a actionbar {"text":"RESET ALL PLAYERS!","color":"green","bold":true}
execute unless entity @a[tag=!taken] run scoreboard players set reset internal 0