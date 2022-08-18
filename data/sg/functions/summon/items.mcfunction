# SG DEBUG ITEMS

# RATING
# 0 - COPPER
# 1 - IRON
# 2 - GOLD
# 3 - DIAMOND
# 4 - NETHERITE


# chest loot
## copper
give @s silverfish_spawn_egg{display:{Name:'{"text":"COPPER Chest","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r0"]}} 1
## iron
give @s silverfish_spawn_egg{display:{Name:'{"text":"IRON Chest","color":"white","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r1"]}} 1
## gold
give @s silverfish_spawn_egg{display:{Name:'{"text":"GOLD Chest","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r2"]}} 1
## diamond
give @s silverfish_spawn_egg{display:{Name:'{"text":"DIAMOND Chest","color":"aqua","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r3"]}} 1
# Netherite
#execute if score debug internal matches 1 run give @s silverfish_spawn_egg{display:{Name:'{"text":"NETHERITE Chest (not recommended)","color":"black","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_r4"]}} 1


# spawn pod
give @s villager_spawn_egg{display:{Name:'{"text":"Spawn Pod","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_spawn"]}} 1

# copy block
give @s villager_spawn_egg{display:{Name:'{"text":"Copy Block (clones upon reset, useful for trapdoors etc.)","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["copyblockspawn"]}} 1

# supply drop
give @s villager_spawn_egg{display:{Name:'{"text":"Supply drop location","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["summon_supply"]}} 1

# border centre
give @s villager_spawn_egg{display:{Name:'{"text":"Border centre location","color":"green","bold":true,"italic":false}'},Enchantments:[{}],EntityTag:{Silent:1b,NoAI:1b,Tags:["bordercentrespawn"]}} 1