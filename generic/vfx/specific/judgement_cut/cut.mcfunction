## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s kits.x = %vfxJudgementCut.px kits.x
scoreboard players operation @s kits.y = %vfxJudgementCut.py kits.y
scoreboard players operation @s kits.x -= %vfxJudgementCut.x kits.x
scoreboard players operation @s kits.y -= %vfxJudgementCut.y kits.y

# rotate toward point
execute unless entity @s[scores={kits.x=-200..200}] run scoreboard players operation %vfxJudgementCut.x kits.x += %vfxJudgementCut.vx kits.x
execute unless entity @s[scores={kits.y=-90..90}] run scoreboard players operation %vfxJudgementCut.y kits.y += %vfxJudgementCut.vy kits.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %vfxJudgementCut.x kits.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %vfxJudgementCut.y kits.y

# particles
execute at @s run particle dust{color:[1.0,1.0,1.0],scale:0.5} ^ ^ ^3.00 0 0 0 0 1
execute at @s run particle dust{color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^2.75 0 0 0 0 1
execute at @s run particle dust{color:[0.0,0.5,1.0],scale:0.5} ^ ^ ^2.50 0 0 0 0 1
execute at @s run particle dust{color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^-2.00 0 0 0 0 1

# recurse until pos is close to point
scoreboard players reset @s kits.z
scoreboard players operation @s kits.z += @s kits.x
scoreboard players operation @s kits.z += @s kits.y
execute if entity @s[scores={kits.z=-290..290}] run function kits:generic/vfx/specific/judgement_cut/end
execute unless entity @s[scores={kits.z=-290..290}] at @s run function kits:generic/vfx/specific/judgement_cut/cut