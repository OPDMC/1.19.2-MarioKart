execute unless score skin mkr_skin matches 1.. run item replace entity @s weapon.mainhand with diamond{CustomModelData:101}
execute if score skin mkr_skin matches 1 run item replace entity @s weapon.mainhand with diamond{CustomModelData:102}
execute if score skin mkr_skin matches 2 run item replace entity @s weapon.mainhand with diamond{CustomModelData:103}
execute if score skin mkr_skin matches 3 run item replace entity @s weapon.mainhand with diamond{CustomModelData:104}
execute if score skin mkr_skin matches 4 run item replace entity @s weapon.mainhand with diamond{CustomModelData:105}
execute if score skin mkr_skin matches 5 run item replace entity @s weapon.mainhand with diamond{CustomModelData:106}
execute if score skin mkr_skin matches 6 run item replace entity @s weapon.mainhand with diamond{CustomModelData:107}
execute if score skin mkr_skin matches 7 run item replace entity @s weapon.mainhand with diamond{CustomModelData:108}
execute if score skin mkr_skin matches 8 run item replace entity @s weapon.mainhand with diamond{CustomModelData:109}

scoreboard players operation @s mkr_id = mkr_id mkr_id
execute if score temp4 mkr_math matches 1 run tag @s add mkr_ai_cart
execute if score temp4 mkr_math matches 0 run tag @s remove mkr_ai_cart

execute if entity @s[tag=mkr_auscart] run tag @s remove mkr_auscart

effect give @s slowness 999999 250 true
execute if entity @s[tag=mkr_fly] unless block ~ ~-0.1 ~ #air_types run item replace entity @e[tag=mkr_in] armor.head with air
execute if entity @s[tag=mkr_fly] unless block ~ ~-0.1 ~ #air_types run tag @e[tag=mkr_driver,limit=1,sort=nearest] remove mkr_fly
execute if entity @s[tag=mkr_fly] unless block ~ ~-0.1 ~ #air_types run tag @s remove mkr_fly
execute if entity @s[tag=mkr_fly] unless block ^ ^ ^ minecraft:water run data modify entity @s Motion[1] set value -0.13
data merge entity @s {Sitting:0b}
data merge entity @s {Sleeping:0b}
data merge entity @s {Crouching:0b}
execute if score @s mkr_stun matches 1.. run scoreboard players remove @s mkr_stun 1
execute unless score @s mkr_stun matches 1.. store result score @s mkr_rotation run data get storage mkr_rot Rotation[0]
execute unless score @s mkr_stun matches 1.. store result entity @s Rotation[0] float 1 run scoreboard players get @s mkr_rotation
data modify entity @s Rotation[1] set value 0.0f
execute if score @s mkr_stun matches 34 store result score @s mkr_rotation run data get entity @s Rotation[0]
execute if score @s mkr_stun matches 1.. run scoreboard players add @s mkr_rotation 29
execute if score @s mkr_stun matches 1.. store result entity @s Rotation[0] float 1 run scoreboard players get @s mkr_rotation

execute if score @s mkr_motion_x > tempx mkr_math run scoreboard players operation @s mkr_motion_x -= grip mkr_math
execute if score @s mkr_motion_x < tempx mkr_math run scoreboard players operation @s mkr_motion_x += grip mkr_math

execute if score @s mkr_motion_z > tempz mkr_math run scoreboard players operation @s mkr_motion_z -= grip mkr_math
execute if score @s mkr_motion_z < tempz mkr_math run scoreboard players operation @s mkr_motion_z += grip mkr_math

scoreboard players operation temp1 mkr_math = tempx mkr_math
scoreboard players operation temp2 mkr_math = tempz mkr_math

scoreboard players operation temp1 mkr_math -= @s mkr_motion_x
scoreboard players operation temp2 mkr_math -= @s mkr_motion_z
execute if score temp1 mkr_math matches ..-1 run scoreboard players operation temp1 mkr_math *= #-1 mkr_math
execute if score temp2 mkr_math matches ..-1 run scoreboard players operation temp2 mkr_math *= #-1 mkr_math

execute if score temp4 mkr_math matches 0 store result entity @s Motion[0] double 0.0009 run scoreboard players get @s mkr_motion_x
execute if score temp4 mkr_math matches 0 store result entity @s Motion[2] double 0.0009 run scoreboard players get @s mkr_motion_z
execute if score temp4 mkr_math matches 1 store result entity @s Motion[0] double 0.00091 run scoreboard players get @s mkr_motion_x
execute if score temp4 mkr_math matches 1 store result entity @s Motion[2] double 0.00091 run scoreboard players get @s mkr_motion_z
execute if score temp3 mkr_speed matches 1000.. store result entity @s Motion[0] double 0.0011 run scoreboard players get @s mkr_motion_x
execute if score temp3 mkr_speed matches 1000.. store result entity @s Motion[2] double 0.0011 run scoreboard players get @s mkr_motion_z
execute if score temp3 mkr_speed matches 1050.. store result entity @s Motion[0] double 0.0013 run scoreboard players get @s mkr_motion_x
execute if score temp3 mkr_speed matches 1050.. store result entity @s Motion[2] double 0.0013 run scoreboard players get @s mkr_motion_z
execute if score temp3 mkr_speed matches 1100.. store result entity @s Motion[0] double 0.0015 run scoreboard players get @s mkr_motion_x
execute if score temp3 mkr_speed matches 1100.. store result entity @s Motion[2] double 0.0015 run scoreboard players get @s mkr_motion_z
execute if score temp3 mkr_speed matches 1150.. store result entity @s Motion[0] double 0.0018 run scoreboard players get @s mkr_motion_x
execute if score temp3 mkr_speed matches 1150.. store result entity @s Motion[2] double 0.0018 run scoreboard players get @s mkr_motion_z
execute if block ^ ^-0.2 ^ minecraft:water run data modify entity @s Motion[1] set value 0.03
execute if block ^ ^ ^ minecraft:water run data modify entity @s Motion[1] set value 0.6
execute if block ^ ^ ^ minecraft:water run execute store result entity @s Motion[0] double 0.00017 run scoreboard players get @s mkr_motion_x
execute if block ^ ^ ^ minecraft:water run execute store result entity @s Motion[2] double 0.00017 run scoreboard players get @s mkr_motion_z