# note: this is a demo for the prerequisite code that must be executed when the moving entity is initially summoned.
# **not optimized
summon armor_stand ~ ~ ~
tp @e[type=armor_stand,limit=1,sort=nearest] ~ ~1 ~ ~ ~
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s run scoreboard players set @s kits.raycast.dist 0
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s run scoreboard players set @s kits.raycast.step 1000
execute as @e[type=armor_stand,limit=1,sort=nearest] at @s run function kits:generic/functions/bounce/wall/find