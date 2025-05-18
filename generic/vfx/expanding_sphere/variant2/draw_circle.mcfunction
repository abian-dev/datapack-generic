## Draws a Circle
$tp @s ~ ~ ~ ~$(inaccuracy) ~
$execute positioned ^ ^ ^0.01 facing entity @s feet run particle $(particle) ~ ~ ~ ^ ^ ^$(motion) $(speed) 0
$execute unless entity @s[y_rotation=0..$(inaccuracy1Less)] at @s run function kits:generic/vfx/expanding_sphere/variant2/draw_circle with storage minecraft:vfx expandingSphere2