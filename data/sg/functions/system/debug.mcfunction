# SG debug mode


# chest loot
execute if score debug internal matches 1 as @e[tag=chest_tier,tag=chest_tier.0] at @s run particle minecraft:block waxed_copper_block ~ ~-1.5 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=chest_tier,tag=chest_tier.1] at @s run particle minecraft:block iron_block ~ ~-1.5 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=chest_tier,tag=chest_tier.2] at @s run particle minecraft:block gold_block ~ ~-1.5 ~ 0 0 0 1 1
execute if score debug internal matches 1 as @e[tag=chest_tier,tag=chest_tier.3] at @s run particle minecraft:block diamond_block ~ ~-1.5 ~ 0 0 0 1 1

# spawn pods
execute if score debug internal matches 1 as @e[tag=spawn] at @s run particle minecraft:glow ~ ~-1 ~ 0 0 0 1 2

# copy block
execute if score debug internal matches 1 as @e[tag=copyblock] at @s run particle minecraft:glow_squid_ink ~ ~-1 ~ 0 0 0 1 2

# border centre
execute if score debug internal matches 1 as @e[tag=bordercentre] at @s run particle minecraft:totem_of_undying ~ ~-1 ~ 0 0 0 1 2
# border
execute if score debug internal matches 1 as @e[tag=border] at @s run particle minecraft:nautilus ~ ~-1 ~ 0 0 0 1 2
# border transitioning
execute if score debug internal matches 1 as @e[tag=border_trans] at @s run particle minecraft:angry_villager ~ ~-1 ~ 0 0 0 1 2