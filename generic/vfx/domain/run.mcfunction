## Runs Domain Expansion
scoreboard players operation %vfxDomain.speed kits.z = %vfxDomain.speed kits.constant
execute if entity @s[tag=!vfxDomainFullSphere] run function kits:generic/vfx/domain/draw_sphere with storage minecraft:vfx domain
execute if entity @s[tag=vfxDomainFullSphere] run function kits:generic/vfx/domain/end