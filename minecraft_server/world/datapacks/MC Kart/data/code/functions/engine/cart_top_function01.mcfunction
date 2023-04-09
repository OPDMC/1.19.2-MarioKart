execute store result score @s mkr_rotation run data get storage mkr_rot Rotation[0]
scoreboard players add @s mkr_rotation 90
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s mkr_rotation

execute if score temp1 mkr_math matches 400.. run particle squid_ink ^ ^-0.6 ^ 0.3 0 0.3 0 1
execute if score temp2 mkr_math matches 400.. run particle squid_ink ^ ^-0.6 ^ 0.3 0 0.3 0 1