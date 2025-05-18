# example call: function kits:generic/vfx/expanding_cylinder/play {"accuracy":"200","speed":"200","limit":"5","height":"2000","particle":"flame"}
## Plays Expanding Cylinder
# summon
function kits:generic/vfx/expanding_cylinder/end
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxExpandingCylinder"],Duration:$(limit)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingCylinder] ~ ~ ~ 0 0

# initialize
scoreboard players set %vfxExpandingCylinder.0 kits.constant 0
$scoreboard players set %vfxExpandingCylinder.accuracy kits.constant $(accuracy)
$scoreboard players set %vfxExpandingCylinder.speed kits.constant $(speed)
$scoreboard players set %vfxExpandingCylinder.limit kits.constant $(limit)
$scoreboard players set %vfxExpandingCylinder.height kits.constant $(height)
$data modify storage minecraft:vfx expandingCylinder.particle set value "$(particle)"

# calculate inaccuracy
scoreboard players set %vfxExpandingCylinder.inaccuracy kits.constant 10000
scoreboard players operation %vfxExpandingCylinder.inaccuracy kits.constant /= %vfxExpandingCylinder.accuracy kits.constant