## Runs Expanding Sphere
# iterations
scoreboard players add %vfxExpandingSphere.iterations kits.z 1

# next expansion
scoreboard players operation %vfxExpandingSphere.step kits.z += %vfxExpandingSphere.speed kits.constant
scoreboard players operation %vfxExpandingSphere.density kits.z += %vfxExpandingSphere.accuracy kits.constant
scoreboard players set %vfxExpandingSphere.sparsity kits.z 1000000
scoreboard players operation %vfxExpandingSphere.sparsity kits.z /= %vfxExpandingSphere.density kits.z
scoreboard players operation %vfxExpandingSphere.sparsity-1 kits.z = %vfxExpandingSphere.sparsity kits.z
scoreboard players remove %vfxExpandingSphere.sparsity-1 kits.z 1

# store results
execute store result storage minecraft:vfx expandingSphere.step float 0.01 run scoreboard players get %vfxExpandingSphere.step kits.z
execute store result storage minecraft:vfx expandingSphere.density1Less float 0.01 run scoreboard players get %vfxExpandingSphere.sparsity-1 kits.z
execute store result storage minecraft:vfx expandingSphere.density float 0.01 run scoreboard players get %vfxExpandingSphere.sparsity kits.z

# draw
tp @s ~ ~ ~ 0 -90
execute if score %vfxExpandingSphere.iterations kits.z < %vfxExpandingSphere.limit kits.constant at @s run function kits:generic/vfx/expanding_sphere/variant1/draw_sphere with storage minecraft:vfx expandingSphere
execute if score %vfxExpandingSphere.iterations kits.z >= %vfxExpandingSphere.limit kits.constant run function kits:generic/vfx/expanding_sphere/variant1/end