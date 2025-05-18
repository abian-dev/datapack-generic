## Slash Backward Step Function
# vfx
$$(vfx)

# recursive call
scoreboard players remove @s kits.raycast.step 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycast.step 0
$execute if score @s kits.raycast.step matches 0.. positioned ^ ^ ^-$(inaccuracy) run function kits:generic/vfx/slash_scatter/slash_bwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}