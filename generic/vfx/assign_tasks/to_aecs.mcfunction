## Assigns Tasks to Specific Area Effect Clouds
# generic
execute if entity @s[tag=vfxDomain] run function kits:generic/vfx/domain/run
execute if entity @s[tag=vfxExpandingCylinder] run function kits:generic/vfx/expanding_cylinder/run
execute if entity @s[tag=vfxExpandingSphere] run function kits:generic/vfx/expanding_sphere/variant1/run
execute if entity @s[tag=vfxRotatingVertical] run function kits:generic/vfx/rotating_vertical/general/run
execute if entity @s[tag=vfxShine] run function kits:generic/vfx/rotating_vertical/shine/run
# specific
execute if entity @s[tag=vfxJudgementCutVortex] run function kits:generic/vfx/specific/judgement_cut/play