## Draws a Circle
$tp @s ~ ~ ~ ~$(density) ~
$particle $(particle) ^ ^ ^$(step) 0 0 0 0 1
$execute unless entity @s[y_rotation=0..$(density1Less)] at @s run function kits:generic/vfx/expanding_sphere/variant1/draw_circle with storage minecraft:vfx expandingSphere