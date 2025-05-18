## Draws a Cylinder
# draw a circle at each vertical layer
function kits:generic/vfx/expanding_cylinder/draw_circle with storage minecraft:vfx expandingCylinder

# calculate the height of the next layer
scoreboard players operation %vfxExpandingCylinder.height kits.z += %vfxExpandingCylinder.inaccuracy kits.constant
execute store result storage minecraft:vfx expandingCylinder.height float 0.01 run scoreboard players get %vfxExpandingCylinder.height kits.z
execute unless score %vfxExpandingCylinder.height kits.z >= %vfxExpandingCylinder.height kits.constant at @s run function kits:generic/vfx/expanding_cylinder/draw_cylinder