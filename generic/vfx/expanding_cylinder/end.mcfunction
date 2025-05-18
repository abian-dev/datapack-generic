## End of Expanding Cylinder
# reset
data remove storage minecraft:vfx expandingCylinder
scoreboard players reset %vfxExpandingCylinder.accuracy
scoreboard players reset %vfxExpandingCylinder.inaccuracy
scoreboard players reset %vfxExpandingCylinder.speed
scoreboard players reset %vfxExpandingCylinder.limit
scoreboard players reset %vfxExpandingCylinder.height
scoreboard players reset %vfxExpandingCylinder.0
scoreboard players reset %vfxExpandingCylinder.density
scoreboard players reset %vfxExpandingCylinder.sparsity
scoreboard players reset %vfxExpandingCylinder.sparsity-1
scoreboard players reset %vfxExpandingCylinder.step
scoreboard players reset %vfxExpandingCylinder.iterations
kill @e[type=area_effect_cloud,tag=vfxExpandingCylinder]