# note: kits.raycast.dist = 4 corresponds to one block, as 4 * 0.25 = 1
## Executed Every Tick
# bounces when the object reaches the wall
scoreboard players remove @s kits.raycast.dist 4
execute if score @s kits.raycast.dist matches ..4 run function kits:generic/functions/bounce/trigger