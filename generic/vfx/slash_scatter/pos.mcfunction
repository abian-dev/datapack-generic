## Random Pos Step Function
# collision check
execute unless block ~ ~ ~ #kits:passable run scoreboard players set %vfxSlashScatter.dist kits.z 0
execute if score %vfxSlashScatter.dist kits.z matches 0 run tp @s ~ ~ ~

# recursive call
scoreboard players remove %vfxSlashScatter.dist kits.z 1
$execute if score %vfxSlashScatter.dist kits.z matches 0.. positioned ^ ^ ^$(inaccuracy) run function kits:generic/vfx/slash_scatter/pos {"inaccuracy":"$(inaccuracy)"}