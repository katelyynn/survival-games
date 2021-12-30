# SURVIVAL GAMES DEBUG ITEMS

# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND
# 4 - NETHERITE


execute unless score @s seen_notice matches 1 run tellraw @s ["",{"text":"\nThese are spawnable armour stands that can mark various things.\n\nChest spawn eggs will set the rarity of the chest. They should be placed *inside* the chest block.\n\nSpawn pods are used for creating pods before the game starts. They should be placed on the stone slab.\n\nCopy blocks are used to clone the state of a block upon each game reset, they are useful for resetting trapdoor (open/closed) states etc. They should be placed one block above.\nBorder centres mark a potential location the border may close on.\n"}]
scoreboard players set @s seen_notice 1

# Chest loot
# Copper
give @s silverfish_spawn_egg{display:{Name:'{"text":"COPPER Chest","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r0"]}} 1
# Iron
give @s silverfish_spawn_egg{display:{Name:'{"text":"IRON Chest","color":"white","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r1"]}} 1
# Gold
give @s silverfish_spawn_egg{display:{Name:'{"text":"GOLD Chest","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r2"]}} 1
# Diamond
give @s silverfish_spawn_egg{display:{Name:'{"text":"DIAMOND Chest","color":"aqua","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r3"]}} 1
# Netherite
#execute if score debug internal matches 1 run give @s silverfish_spawn_egg{display:{Name:'{"text":"NETHERITE Chest (not recommended)","color":"black","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r4"]}} 1


# Spawn pod
give @s villager_spawn_egg{display:{Name:'{"text":"Spawn Pod","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_spawn"]}} 1

# Copy block
give @s villager_spawn_egg{display:{Name:'{"text":"Copy Block (clones upon reset, useful for trapdoors etc.)","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["copyblockspawn"]}} 1

# Supply drop
give @s villager_spawn_egg{display:{Name:'{"text":"Supply drop location","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_supply"]}} 1

# Border centre
give @s villager_spawn_egg{display:{Name:'{"text":"Border centre location","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["bordercentrespawn"]}} 1