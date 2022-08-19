# SG win
## red


scoreboard players set period internal 3
scoreboard players reset alive players
scoreboard players reset red players
scoreboard players reset blue players

# range check kills
execute as @a unless score @s kills matches 0.. run scoreboard players set @s kills 0

# total team kills
scoreboard players set red_kills internal 0
scoreboard players set blue_kills internal 0
execute as @a[team=red] run scoreboard players operation red_kills internal += @s kills
execute as @a[team=blue] run scoreboard players operation blue_kills internal += @s kills

# announce
title @s title {"text":"GAME OVER!","color":"red","bold":true}
title @s subtitle [{"text":"Red has won the game."}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Red","color":"red"},{"text":" has won with ","color":"yellow"},{"score":{"name":"red_kills","objective":"internal"},"color":"gold"},{"text":" kills!","color":"yellow"}]
# sfx
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~

# effects
effect give @s resistance 9999 255 true
execute as @a[gamemode=adventure] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16196130],FadeColors:[I;15810098]}]}}}}


# display own kills
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"You got ","color":"yellow"},{"score":{"name":"@s","objective":"kills"},"color":"gold"},{"text":" kills this round.","color":"yellow"}]


# return to lobby
schedule function sg:lobby 5s