# example call: function kits:generic/vfx/specific/unlimited_void/play
## Plays Domain Expansion: Unlimited Void
# initialize
scoreboard players set %unlimitedVoid.accuracy kits.constant 300
scoreboard players set %unlimitedVoid.radius kits.constant 1000
scoreboard players set %unlimitedVoid.speed kits.constant 5

# expand domain
execute store result storage minecraft:vfx unlimitedVoid.accuracy int 1 run scoreboard players get %unlimitedVoid.accuracy kits.constant
execute store result storage minecraft:vfx unlimitedVoid.radius int 1 run scoreboard players get %unlimitedVoid.radius kits.constant
execute store result storage minecraft:vfx unlimitedVoid.speed int 1 run scoreboard players get %unlimitedVoid.speed kits.constant
data modify storage minecraft:vfx unlimitedVoid.particle set value "block_marker{block_state:{Name:black_concrete}}"
execute rotated ~ 0 positioned ^ ^1 ^-3 run function kits:generic/vfx/domain/play with storage minecraft:vfx unlimitedVoid

# play
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxUnlimitedVoid"],Duration:80}
execute rotated ~ 0 run tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxUnlimitedVoid] ^ ^1 ^7 0 0
schedule function kits:generic/vfx/specific/unlimited_void/schedule 40t append
schedule function kits:generic/vfx/specific/unlimited_void/schedule 55t append
schedule function kits:generic/vfx/specific/unlimited_void/schedule 60t append

# sfx
playsound block.bell.use neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound block.bell.resonate neutral @a[distance=..20] ~ ~ ~ 2 1 1