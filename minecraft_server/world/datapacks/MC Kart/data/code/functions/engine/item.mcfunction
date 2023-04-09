execute if score @s mkr_cd matches 1.. run scoreboard players remove @s mkr_cd 1
execute if score @s mkr_cd matches 1 run summon end_crystal ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowBottom:0b}

execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.2] unless entity @e[tag=mkr_colecteditem,distance=..1.2] run tag @e[scores={mkr_item=0},tag=mkr_driver,distance=..1.5] add mkr_colecteditem
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.2] run playsound minecraft:item.axe.strip master @a ~ ~ ~ 1 1.8
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.2] run particle minecraft:scrape ~ ~1.1 ~ 0.4 0.4 0.4 0 20
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.2] run kill @e[type=end_crystal,limit=1,sort=nearest,distance=..2.5]
execute unless score @s mkr_cd matches 1.. if entity @e[tag=mkr_driver,distance=..1.2] run scoreboard players set @s mkr_cd 70