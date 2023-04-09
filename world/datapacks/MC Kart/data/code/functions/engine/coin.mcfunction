execute if score @s mkr_cd matches 1.. run scoreboard players remove @s mkr_cd 1
execute if score @s mkr_cd matches 1 run summon item ~ ~ ~ {NoGravity:1b,PickupDelay:32767,Item:{id:"minecraft:gold_block",Count:1b}}
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.0] run scoreboard players add @e[tag=mkr_driver,distance=..1.0] mkr_coin 1
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.0] run scoreboard players add @e[tag=mkr_driver,distance=..1.0] mkr_stat4 1
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.0] run scoreboard players add community mkr_stat4 1
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.0] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.7 1.1
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.0] run kill @e[type=item,distance=..0.3]
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.0] run scoreboard players set @s mkr_cd 200