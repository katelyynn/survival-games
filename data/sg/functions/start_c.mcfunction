# SG start
## if eligible
## with countdown


# reset game
function sg:admin/reset

# display teams
tellraw @a[team=red] ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"You're playing for the ","color":"gray"},{"text":"Red Team","color":"red"}]
tellraw @a[team=blue] ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"You're playing for the ","color":"gray"},{"text":"Blue Team","color":"blue"}]
execute if score teams global matches 1.. as @a at @s run playsound entity.arrow.hit_player player @s


# countdown
## 3
schedule function sg:system/count/3 1s
## 2
schedule function sg:system/count/2 2s
## 1
schedule function sg:system/count/1 3s
## GO
schedule function sg:admin/start 4s