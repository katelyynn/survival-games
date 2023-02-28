# migration 2023-02-28


# tag rating renamed to chest_tier
# tag r0, r1, r2, r3 renamed to chest_tier.0 etc.

execute as @e[tag=rating] run tag @s add chest_tier
execute as @e[tag=rating] run tag @s remove rating

execute as @e[tag=r0] run tag @s add chest_tier.0
execute as @e[tag=r0] run tag @s remove r0

execute as @e[tag=r1] run tag @s add chest_tier.1
execute as @e[tag=r1] run tag @s remove r1

execute as @e[tag=r2] run tag @s add chest_tier.2
execute as @e[tag=r2] run tag @s remove r2

execute as @e[tag=r3] run tag @s add chest_tier.3
execute as @e[tag=r3] run tag @s remove r3