## Runs Expanding Cylinder
# iterations
scoreboard players add %vfxExpandingCylinder.iterations kits.z 1

# next expansion
scoreboard players operation %vfxExpandingCylinder.step kits.z += %vfxExpandingCylinder.speed kits.constant
scoreboard players operation %vfxExpandingCylinder.density kits.z += %vfxExpandingCylinder.accuracy kits.constant
scoreboard players set %vfxExpandingCylinder.sparsity kits.z 1000000
scoreboard players operation %vfxExpandingCylinder.sparsity kits.z /= %vfxExpandingCylinder.density kits.z
scoreboard players operation %vfxExpandingCylinder.sparsity-1 kits.z = %vfxExpandingCylinder.sparsity kits.z
scoreboard players remove %vfxExpandingCylinder.sparsity-1 kits.z 1
scoreboard players set %vfxExpandingCylinder.height kits.z 0

# store results
execute store result storage minecraft:vfx expandingCylinder.step float 0.01 run scoreboard players get %vfxExpandingCylinder.step kits.z
execute store result storage minecraft:vfx expandingCylinder.density1Less float 0.01 run scoreboard players get %vfxExpandingCylinder.sparsity-1 kits.z
execute store result storage minecraft:vfx expandingCylinder.density float 0.01 run scoreboard players get %vfxExpandingCylinder.sparsity kits.z
execute store result storage minecraft:vfx expandingCylinder.height float 1.00 run scoreboard players get %vfxExpandingCylinder.0 kits.constant

# draw
tp @s ~ ~ ~ 0 0
execute if score %vfxExpandingCylinder.iterations kits.z < %vfxExpandingCylinder.limit kits.constant at @s run function kits:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:vfx expandingCylinder
execute if score %vfxExpandingCylinder.iterations kits.z >= %vfxExpandingCylinder.limit kits.constant run function kits:generic/vfx/expanding_cylinder/end