# SG win


scoreboard players set period internal 3
scoreboard players reset alive players

# range check kills
execute as @a unless score @s kills matches 0.. run scoreboard players set @s kills 0

# announce
title @s title {"text":"GAME OVER!","color":"gold","bold":true}
title @s subtitle [{"selector":"@a[gamemode=adventure]"},{"text":" has won the game."}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"✔","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@a[gamemode=adventure]","color":"dark_green"},{"text":" won with ","color":"green"},{"score":{"name":"@a[gamemode=adventure,limit=1]","objective":"kills"},"color":"dark_green"},{"text":" kills!","color":"green"}]
# sfx
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~

# effects
effect give @s resistance 9999 255 true
execute as @a[gamemode=adventure] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;15628855],FadeColors:[I;16304457]}]}}}}


# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"✔","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Game over!","color":"aqua"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.5

# display own kills
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"You got ","color":"gray"},{"score":{"name":"@s","objective":"kills"},"color":"green"},{"text":" kills this round.","color":"gray"}]


# return to lobby
schedule function sg:lobby 5s