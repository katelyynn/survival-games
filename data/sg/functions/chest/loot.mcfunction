# loot based on chest
## tiers are stored using entity tags


# normal
## tier 0
execute if score mode global matches 0 as @e[tag=chest_tier,tag=chest_tier.0] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/tier_0"}
## tier 1
execute if score mode global matches 0 as @e[tag=chest_tier,tag=chest_tier.1] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/tier_1"}
## tier 2
execute if score mode global matches 0 as @e[tag=chest_tier,tag=chest_tier.2] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/tier_2"}
## tier 3
execute if score mode global matches 0 as @e[tag=chest_tier,tag=chest_tier.3] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/tier_3"}

# boosted
## tier 0
execute if score mode global matches 1 as @e[tag=chest_tier,tag=chest_tier.0] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/tier_0"}
## tier 1
execute if score mode global matches 1 as @e[tag=chest_tier,tag=chest_tier.1] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/tier_1"}
## tier 2
execute if score mode global matches 1 as @e[tag=chest_tier,tag=chest_tier.2] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/tier_2"}
## tier 3
execute if score mode global matches 1 as @e[tag=chest_tier,tag=chest_tier.3] at @s run data merge block ~ ~-2 ~ {LootTable:"sg:chests/boosted/tier_3"}


execute if score debug internal matches 1.. run title @a actionbar {"text":"LOOTED ALL CHESTS!","color":"green","bold":true}