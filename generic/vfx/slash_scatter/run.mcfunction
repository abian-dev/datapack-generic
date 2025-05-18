## Runs Scatter Slash
# reset pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s kits.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s kits.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s kits.z

# random pos
$execute store result score %vfxSlashScatter.dist kits.z run random value 0..$(slashScatter)
$execute at @s run function kits:generic/vfx/slash_scatter/pos {"inaccuracy":"$(inaccuracy)"}

# random dir
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90

# slash
$scoreboard players set @s kits.raycast.step $(slashLength)
$execute at @s run function kits:generic/vfx/slash_scatter/slash_fwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}
$scoreboard players set @s kits.raycast.step $(slashLength)
$execute at @s run function kits:generic/vfx/slash_scatter/slash_bwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}

# recursive call
scoreboard players remove @s kits.dz 1
$execute if score @s kits.dz matches 0.. run function kits:generic/vfx/slash_scatter/run {"inaccuracy":"$(inaccuracy)","slashLength":"$(slashLength)","slashScatter":"$(slashScatter)","vfx":"$(vfx)"}
execute if score @s kits.dz matches ..-1 run function kits:generic/vfx/slash_scatter/end