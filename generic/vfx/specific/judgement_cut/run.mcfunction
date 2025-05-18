## Runs Judgement Cut
# constants
# increase M to make each step larger
scoreboard players set %vfxJudgementCut.-1 kits.constant -1
scoreboard players set %vfxJudgementCut.s kits.constant 100
scoreboard players set %vfxJudgementCut.m kits.constant 2
scoreboard players set %vfxJudgementCut.restr kits.constant 200

# get vector from pos to point
function kits:generic/vfx/specific/judgement_cut/get

# find largest component
scoreboard players operation %vfxJudgementCut.max kits.z = %vfxJudgementCut.absVx kits.x
scoreboard players operation %vfxJudgementCut.max kits.z > %vfxJudgementCut.absVy kits.y

# normalize vector to unit vector
scoreboard players set %vfxJudgementCut.s kits.constant 100
scoreboard players operation %vfxJudgementCut.x kits.x *= %vfxJudgementCut.s kits.constant
scoreboard players operation %vfxJudgementCut.y kits.y *= %vfxJudgementCut.s kits.constant
scoreboard players operation %vfxJudgementCut.px kits.x *= %vfxJudgementCut.s kits.constant
scoreboard players operation %vfxJudgementCut.py kits.y *= %vfxJudgementCut.s kits.constant
scoreboard players operation %vfxJudgementCut.vx kits.x *= %vfxJudgementCut.s kits.constant
scoreboard players operation %vfxJudgementCut.vy kits.y *= %vfxJudgementCut.s kits.constant
scoreboard players operation %vfxJudgementCut.max kits.z /= %vfxJudgementCut.m kits.constant
scoreboard players operation %vfxJudgementCut.vx kits.x /= %vfxJudgementCut.max kits.z
scoreboard players operation %vfxJudgementCut.vy kits.y /= %vfxJudgementCut.max kits.z

# cut
function kits:generic/vfx/specific/judgement_cut/cut