# example call: function kits:generic/vfx/slash_scatter/play {"inaccuracy":"0.5","slashLength":"10","slashScatter":"10","slashNum":"10","vfx":"function"}
## Plays Scatter Slash
# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxSlashScatter"],Duration:0}
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashScatter] at @s run function kits:generic/vfx/slash_scatter/init {"slashNum":"$(slashNum)"}
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashScatter] at @s run function kits:generic/vfx/slash_scatter/run {"inaccuracy":"$(inaccuracy)","slashLength":"$(slashLength)","slashScatter":"$(slashScatter)","vfx":"$(vfx)"}