## Reset
# message
tellraw @a ["",{"text":"restarting generic...","color":"red"}]

# remove storages
data remove storage vfx domain
data remove storage vfx expandingCylinder
data remove storage vfx expandingSphere
data remove storage vfx expandingSphere2
data remove storage vfx radialForkedLightning
data remove storage vfx slashCrescent
data remove storage vfx slashEncircle
data remove storage vfx unlimitedVoid

# remove scoreboards
scoreboard objectives remove kits.constant
scoreboard objectives remove kits.math

scoreboard objectives remove kits.x
scoreboard objectives remove kits.y
scoreboard objectives remove kits.z

scoreboard objectives remove kits.dx
scoreboard objectives remove kits.dy
scoreboard objectives remove kits.dz

scoreboard objectives remove kits.frame.index
scoreboard objectives remove kits.frame.rate

scoreboard objectives remove kits.raycast.dist
scoreboard objectives remove kits.raycast.step