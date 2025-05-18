## End of Rotating Vertical - Shine
# reset
data remove storage minecraft:vfx shine
scoreboard players reset %vfxShine.speed
scoreboard players reset %vfxShine.duration
scoreboard players reset %vfxShine.inaccuracy
scoreboard players reset %vfxShine.distance
kill @e[type=area_effect_cloud,tag=vfxShine]