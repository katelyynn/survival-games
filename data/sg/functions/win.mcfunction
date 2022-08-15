# SG win


scoreboard players set started internal 0
scoreboard players reset alive players

# announce
title @a title {"text":"GAME OVER!","color":"gold","bold":true}
title @a subtitle [{"selector":"@a[gamemode=adventure]"},{"text":" has won the game."}]
# sfx
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~

# effects
effect give @a resistance 9999 255 true
execute as @a at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;15628855],FadeColors:[I;16304457]}]}}}}