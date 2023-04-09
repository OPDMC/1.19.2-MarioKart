execute if score @s mkr_cd matches 1.. run scoreboard players remove @s mkr_cd 1
execute if entity @e[tag=mkr_driver,distance=..1.3] if score @s mkr_cd matches 0 run scoreboard players set @e[tag=mkr_driver,distance=..1.3] mkr_stun 2
execute if entity @e[tag=mkr_driver,distance=..1.3] if score @s mkr_cd matches 0 run particle minecraft:block yellow_wool ~ ~ ~ 0.3 0.3 0.3 1 10
execute if entity @e[tag=mkr_driver,distance=..1.3] if score @s mkr_cd matches 0 run playsound minecraft:block.slime_block.place master @a ~ ~ ~ 0.8 1.3
execute if entity @e[tag=mkr_driver,distance=..1.3] if score @s mkr_cd matches 0 run kill @s