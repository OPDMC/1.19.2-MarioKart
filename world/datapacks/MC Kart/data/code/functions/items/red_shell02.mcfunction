execute if score @s mkr_cd matches 60 as @e[tag=shelled,limit=1,sort=nearest] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 5 2
execute if score @s mkr_cd matches 40 as @e[tag=shelled,limit=1,sort=nearest] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 5 2
execute if score @s mkr_cd matches 20 as @e[tag=shelled,limit=1,sort=nearest] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 5 2

scoreboard players remove @s mkr_cd 1
execute if score @s mkr_cd matches 0 as @e[tag=shelled,limit=1,sort=nearest] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 1.7
execute if score @s mkr_cd matches 0 as @e[tag=shelled,limit=1,sort=nearest] at @s run scoreboard players set @s mkr_stun 2
execute if score @s mkr_cd matches 0 run tag @e[tag=shelled,limit=1,sort=nearest] remove shelled
execute if score @s mkr_cd matches 0 run kill @s
execute at @e[tag=shelled,limit=1,sort=nearest] run tp @s ~ ~2.2 ~