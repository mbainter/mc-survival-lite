# We may need to add a scoreboard function to track when last run, and then check the scoreboard every
# tick to make sure it's running. We'll see how reliable this is. 
# We might also consider some more complex options:
# 1. Run this every x seconds, but every second check if there's a creeper within x blocks of a player
# 2. Run every second, but only against creepers within x blocks of certain players, then ever 3 seconds for the rest
#    This would keep our most at risk players safest, while still minimizing the griefing risk for everyone
# 3. If it's more efficient keep track of the number of zombies vs tagged zombies, and only run if they're different
execute as @e[type=minecraft:creeper,tag=!bmo_nerfed] at @s run data merge entity @s {ExplosionRadius:0}
tag @e[type=minecraft:creeper,tag=!bmo_nerfed] add bmo_nerfed
schedule function bmo:creeper/nerf 1s
