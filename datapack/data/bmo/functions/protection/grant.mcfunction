# For all players tagged as "protected", grant them 40% resistance
execute as @e[type=minecraft:player,tag=bmo_protected,nbt=!{ActiveEffects:[{Id:11}]}] effect give @s resistance 99999 2 true

# For all players tagged as "extra protected", grant them 60% resistance and 1 heart/5s
execute as @e[type=minecraft:player,tag=bmo_extra_protected,nbt=!{ActiveEffects:[{Id:11}]}] effect give @s resistance 99999 3 true
execute as @e[type=minecraft:player,tag=bmo_extra_protected,nbt=!{ActiveEffects:[{Id:10}]}] effect give @s regeneration 99999 1 true

# For all players tagged as "sheltered", grant them 100% resistance and 1 heart/5s
execute as @e[type=minecraft:player,tag=bmo_sheltered,nbt=!{ActiveEffects:[{Id:11}]}] effect give @s resistance 99999 255 true
execute as @e[type=minecraft:player,tag=bmo_sheltered,nbt=!{ActiveEffects:[{Id:10}]}] effect give @s regeneration 99999 1 true

# for all pets tagged as a protector, give them 100% resistance and strength (765dmg/hit)
execute as @e[type=minecraft:wolf,tag=bmo_protected,nbt=!{ActiveEffects:[{ID:11}]}] effect give @s resistance 99999 255 true
execute as @e[type=minecraft:wolf,tag=bmo_protected,nbt=!{ActiveEffects:[{ID:5}]}] effect give @s strength 99999 255 true

schedule function bmo:protection/grant 30s
