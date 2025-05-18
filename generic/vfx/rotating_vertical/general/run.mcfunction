## Runs Rotating Vertical - General
# switch rotation direction appropriately
execute if entity @s[x_rotation=-90] run function kits:generic/vfx/rotating_vertical/general/switch
execute if entity @s[x_rotation=90] run function kits:generic/vfx/rotating_vertical/general/switch

# rotation
execute if score @s kits.z matches -1 run execute at @s run function kits:generic/vfx/rotating_vertical/general/rot_up with storage minecraft:vfx rotatingVertical
execute if score @s kits.z matches 1 run execute at @s run function kits:generic/vfx/rotating_vertical/general/rot_down with storage minecraft:vfx rotatingVertical

# duration
scoreboard players remove %vfxRotatingVertical.duration kits.z 1
execute if score %vfxRotatingVertical.duration kits.z matches ..0 run function kits:generic/vfx/rotating_vertical/general/end