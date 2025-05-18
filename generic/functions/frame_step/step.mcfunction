## Frame Step Function
# play frame
$data modify storage minecraft:animation frame.filepath set value "$(filepath)"
execute store result storage minecraft:animation frame.index int 1 run scoreboard players get @s kits.frame.index
function kits:generic/functions/frame_step/frame with storage minecraft:animation frame

# next frame
scoreboard players add @s kits.frame.index 1
$scoreboard players set @s kits.frame.rate $(frameRate)