## Switches Rotation Direction
tp @s ~ ~ ~ ~180 ~
execute if entity @s[x_rotation=-90] run scoreboard players set @s kits.z 1
execute if entity @s[x_rotation=90] run scoreboard players set @s kits.z -1