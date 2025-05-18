## Gets Vector From Position to Point
# get pos and point
execute store result score %vfxJudgementCut.x kits.x run random value -200..200
execute store result score %vfxJudgementCut.y kits.y run random value -90..90
execute store result score %vfxJudgementCut.px kits.x run random value -200..200
execute store result score %vfxJudgementCut.py kits.y run random value -90..90

# get vector from pos to point
scoreboard players operation %vfxJudgementCut.vx kits.x = %vfxJudgementCut.px kits.x
scoreboard players operation %vfxJudgementCut.vy kits.y = %vfxJudgementCut.py kits.y
scoreboard players operation %vfxJudgementCut.vx kits.x -= %vfxJudgementCut.x kits.x
scoreboard players operation %vfxJudgementCut.vy kits.y -= %vfxJudgementCut.y kits.y

# calculate absolute max
scoreboard players operation %vfxJudgementCut.absVx kits.x = %vfxJudgementCut.vx kits.x
scoreboard players operation %vfxJudgementCut.absVy kits.y = %vfxJudgementCut.vy kits.y
execute if score %vfxJudgementCut.absVx kits.x matches ..0 run scoreboard players operation %vfxJudgementCut.absVx kits.x *= %vfxJudgementCut.-1 kits.constant
execute if score %vfxJudgementCut.absVy kits.y matches ..0 run scoreboard players operation %vfxJudgementCut.absVy kits.y *= %vfxJudgementCut.-1 kits.constant

# retry if vector is too small
scoreboard players reset %vfxJudgementCut.dist
scoreboard players operation %vfxJudgementCut.dist kits.z += %vfxJudgementCut.absVx kits.x
scoreboard players operation %vfxJudgementCut.dist kits.z += %vfxJudgementCut.absVy kits.y
execute if score %vfxJudgementCut.dist kits.z < %vfxJudgementCut.restr kits.constant run function kits:generic/vfx/specific/judgement_cut/get