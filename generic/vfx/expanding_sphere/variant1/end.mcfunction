## End of Expanding Sphere
# reset
data remove storage minecraft:vfx expandingSphere
scoreboard players reset %vfxExpandingSphere.accuracy
scoreboard players reset %vfxExpandingSphere.speed
scoreboard players reset %vfxExpandingSphere.limit
scoreboard players reset %vfxExpandingSphere.density
scoreboard players reset %vfxExpandingSphere.sparsity
scoreboard players reset %vfxExpandingSphere.sparsity-1
scoreboard players reset %vfxExpandingSphere.step
scoreboard players reset %vfxExpandingSphere.iterations
kill @e[type=area_effect_cloud,tag=vfxExpandingSphere]