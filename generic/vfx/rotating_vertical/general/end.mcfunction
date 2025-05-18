## End of Rotating Vertical - General
# reset
data remove storage minecraft:vfx rotatingVertical
scoreboard players reset %vfxRotatingVertical.speed
scoreboard players reset %vfxRotatingVertical.duration
kill @e[type=area_effect_cloud,tag=vfxRotatingVertical]