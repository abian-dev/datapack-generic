# example call: function kits:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"50","yaw":"90","pitch":"0","distance":"5","particle":"flame"}
## Plays Crescent Slash
# initialize
$scoreboard players set %vfxSlashCrescent.peak kits.dz $(concavity)
$scoreboard players set %vfxSlashCrescent.thickness kits.dz $(thickness)
$scoreboard players set %vfxSlashCrescent.accuracy kits.constant $(accuracy)
$scoreboard players set %vfxSlashCrescent.yaw kits.constant $(yaw)
$scoreboard players set %vfxSlashCrescent.yawReverse kits.constant $(yaw)
scoreboard players add %vfxSlashCrescent.yawReverse kits.constant 180
$scoreboard players set %vfxSlashCrescent.pitch kits.constant $(pitch)
$scoreboard players set %vfxSlashCrescent.distance kits.constant $(distance)
scoreboard players set %vfxSlashCrescent.-1 kits.constant -1
scoreboard players set %vfxSlashCrescent.2 kits.constant 2
scoreboard players set %vfxSlashCrescent.4 kits.constant 4
scoreboard players set %vfxSlashCrescent.100000 kits.constant 100000

# store
execute store result storage minecraft:vfx slashCrescent.yaw int 1 run scoreboard players get %vfxSlashCrescent.yaw kits.constant
execute store result storage minecraft:vfx slashCrescent.yawReverse int 1 run scoreboard players get %vfxSlashCrescent.yawReverse kits.constant
execute store result storage minecraft:vfx slashCrescent.pitch int 1 run scoreboard players get %vfxSlashCrescent.pitch kits.constant
execute store result storage minecraft:vfx slashCrescent.distance int 1 run scoreboard players get %vfxSlashCrescent.distance kits.constant
$data modify storage minecraft:vfx slashCrescent.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxSlashCrescent"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] at @s run function kits:generic/vfx/slash_crescent/get with storage minecraft:vfx slashCrescent
function kits:generic/vfx/slash_crescent/end