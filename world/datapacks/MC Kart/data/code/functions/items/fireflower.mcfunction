particle angry_villager ~ ~ ~ 0.1 0.1 0.1 0 1
scoreboard players operation temp mkr_id = @s mkr_id
execute as @e[tag=mkr_driver,distance=..2.7] unless score @s mkr_id = temp mkr_id run scoreboard players set @s mkr_stun 2
execute as @e[tag=mkr_driver,distance=..2.7] unless score @s mkr_id = temp mkr_id run scoreboard players set temp mkr_id -1
execute if score temp mkr_id matches -1 run kill @s