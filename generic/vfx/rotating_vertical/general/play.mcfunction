# example call: function kits:generic/vfx/rotating_vertical/general/play {"speed":"200","duration":"20","vfx":"function"}
## Plays Rotating Vertical - General
# summon
function kits:generic/vfx/rotating_vertical/general/end
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxRotatingVertical"],Duration:$(duration)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRotatingVertical] ~ ~ ~ ~90 -90

# initialize
$data modify storage minecraft:vfx rotatingVertical.vfx set value "$(vfx)"
$scoreboard players set %vfxRotatingVertical.duration kits.z $(duration)
$scoreboard players set %vfxRotatingVertical.speed kits.constant $(speed)
execute store result storage minecraft:vfx rotatingVertical.speed float 0.1 run scoreboard players get %vfxRotatingVertical.speed kits.constant