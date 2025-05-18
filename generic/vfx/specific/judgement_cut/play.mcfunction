## Plays Judgement Cut
function kits:generic/vfx/specific/judgement_cut/end
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["vfx","vfxJudgementCut"],Duration:0}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxJudgementCut] at @s run function kits:generic/vfx/specific/judgement_cut/run