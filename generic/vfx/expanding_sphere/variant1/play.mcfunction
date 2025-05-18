# example call: function kits:generic/vfx/expanding_sphere/variant1/play {"accuracy":"200","speed":"200","limit":"5","particle":"flame"}
## Plays Expanding Sphere - Variant 1
# summon
function kits:generic/vfx/expanding_sphere/variant1/end
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxExpandingSphere"],Duration:$(limit)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingSphere] ~ ~ ~ 0 -90

# initialize
$scoreboard players set %vfxExpandingSphere.accuracy kits.constant $(accuracy)
$scoreboard players set %vfxExpandingSphere.speed kits.constant $(speed)
$scoreboard players set %vfxExpandingSphere.limit kits.constant $(limit)
$data modify storage minecraft:vfx expandingSphere.particle set value "$(particle)"