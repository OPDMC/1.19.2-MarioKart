execute if score @s mkr_cd matches 60 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 0.594604
execute if score @s mkr_cd matches 40 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 0.594604
execute if score @s mkr_cd matches 20 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 0.594604

execute if score @s mkr_cd matches 1.. run scoreboard players remove @s mkr_cd 1
execute if score @s mkr_cd matches 0 run scoreboard players set @e[tag=mkr_driver,distance=..3.9] mkr_stun 3
execute if score @s mkr_cd matches 0 run particle minecraft:explosion ~ ~ ~ 1.0 1.0 1.0 0 10
execute if score @s mkr_cd matches 0 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute if score @s mkr_cd matches 0 run kill @s