# example call: function kits:generic/vfx/rotating_vertical/shine/play {"speed":"100","duration":"10","inaccuracy":"100","distance":"20","particle":"electric_spark"}
## Plays Rotating Vertical - Shine
# summon
function kits:generic/vfx/rotating_vertical/shine/end
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxShine"],Duration:$(duration)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxShine] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxShine.speed kits.constant $(speed)
$scoreboard players set %vfxShine.inaccuracy kits.constant $(inaccuracy)
$scoreboard players set %vfxShine.distance kits.constant $(distance)
$scoreboard players set %vfxShine.duration kits.z $(duration)

# store
$data modify storage minecraft:vfx shine.particle set value "$(particle)"
execute store result storage minecraft:vfx shine.speed float 0.1 run scoreboard players get %vfxShine.speed kits.constant
execute store result storage minecraft:vfx shine.inaccuracy float 0.001 run scoreboard players get %vfxShine.inaccuracy kits.constant