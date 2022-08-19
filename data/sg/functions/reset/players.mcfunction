execute as @r[tag=!taken] at @s run tp @s @e[tag=spawn,tag=!taken,limit=1,sort=random]
execute unless entity @a[tag=!taken] if score debug internal matches 1.. run title @a actionbar {"text":"RESET ALL PLAYERS!","color":"green","bold":true}

execute unless entity @a[tag=!taken] run scoreboard players set reset internal 0