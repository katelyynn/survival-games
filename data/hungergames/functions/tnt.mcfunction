execute as @e[tag=fake_tnt] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:tnt"},Time:0}
kill @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:14b}]}]