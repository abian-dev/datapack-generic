## Initialize Scatter Slash
# number of slashes
$scoreboard players set @s kits.dz $(slashNum)

# original pos
execute store result score @s kits.x run data get entity @s Pos[0] 100
execute store result score @s kits.y run data get entity @s Pos[1] 100
execute store result score @s kits.z run data get entity @s Pos[2] 100