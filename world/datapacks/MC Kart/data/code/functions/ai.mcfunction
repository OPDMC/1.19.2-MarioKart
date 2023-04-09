execute unless score @s mkr_point matches 1.. run scoreboard players set @s mkr_speed 0
effect give @s minecraft:resistance 999999 250 true
execute if score mkr_cooldown mkr_cd matches 0 run scoreboard players add @s mkr_cd 1

execute if score @s mkr_point matches 1.. run scoreboard players operation temp1 mkr_point = @s mkr_point
execute if score @s mkr_point matches 1.. run scoreboard players operation temp2 mkr_strecke = @s mkr_strecke
execute if score @s mkr_point matches 1.. as @e[tag=mkr_point] if score @s mkr_point = temp1 mkr_point if score @s mkr_strecke = temp2 mkr_strecke run tag @s add loot_at_me
execute if score @s mkr_cd matches 100.. if entity @s[tag=!mkr_fly] run scoreboard players operation temps mkr_id = @s mkr_id
execute if score @s mkr_cd matches 100.. if entity @s[tag=!mkr_fly] run execute as @e[tag=mkr_ai_cart] if score @s mkr_id = temps mkr_id run tp @s @e[tag=loot_at_me,limit=1]
execute if score @s mkr_cd matches 100.. if entity @s[tag=!mkr_fly] run scoreboard players set @s mkr_cd 0
execute if score @s mkr_cd matches 500.. if entity @s[tag=mkr_fly] run scoreboard players operation temps mkr_id = @s mkr_id
execute if score @s mkr_cd matches 500.. if entity @s[tag=mkr_fly] run execute as @e[tag=mkr_ai_cart] if score @s mkr_id = temps mkr_id run tp @s @e[tag=loot_at_me,limit=1]
execute if score @s mkr_cd matches 500.. if entity @s[tag=mkr_fly] run scoreboard players set @s mkr_cd 0
execute if score @s mkr_slot matches 1.. if score @s mkr_point matches 1.. if entity @e[tag=loot_at_me,distance=..4] run tag @s add ja
execute if score @s mkr_slot matches 2 at @e[tag=loot_at_me,limit=1] positioned ~ ~ ~-3 if score @s mkr_point matches 1.. if entity @s[distance=..4] run tag @s add ja
execute if score @s mkr_slot matches 3 at @e[tag=loot_at_me,limit=1] positioned ~ ~ ~3 if score @s mkr_point matches 1.. if entity @s[distance=..4] run tag @s add ja
execute if score @s mkr_slot matches 4 at @e[tag=loot_at_me,limit=1] positioned ~-3 ~ ~ if score @s mkr_point matches 1.. if entity @s[distance=..4] run tag @s add ja
execute if score @s mkr_slot matches 5 at @e[tag=loot_at_me,limit=1] positioned ~3 ~ ~ if score @s mkr_point matches 1.. if entity @s[distance=..4] run tag @s add ja
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run scoreboard players add @s mkr_point 1
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] if score @s mkr_point > mkr_point mkr_point run scoreboard players add @s mkr_round 1
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] if score @s mkr_point > mkr_point mkr_point run scoreboard players set @s mkr_point 1
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run scoreboard players set @s mkr_cd 0
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run scoreboard players set @s mkr_slot 0
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run tag @e[tag=loot_at_me] remove loot_at_me
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run scoreboard players operation temp1 mkr_point = @s mkr_point
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run scoreboard players operation temp2 mkr_strecke = @s mkr_strecke
execute if score @s mkr_point matches 1.. if entity @s[tag=ja] run execute as @e[tag=mkr_point] if score @s mkr_point = temp1 mkr_point if score @s mkr_strecke = temp2 mkr_strecke run tag @s add loot_at_me
execute unless score @s mkr_slot matches 0.. run scoreboard players set @s mkr_slot 0
execute if score @s mkr_slot matches 0 if predicate code:chance run scoreboard players set @s mkr_slot 1
execute if score @s mkr_slot matches 0 if predicate code:chance run scoreboard players set @s mkr_slot 2
execute if score @s mkr_slot matches 0 if predicate code:chance run scoreboard players set @s mkr_slot 3
execute if score @s mkr_slot matches 0 if predicate code:chance run scoreboard players set @s mkr_slot 4
execute if score @s mkr_slot matches 0 if predicate code:chance run scoreboard players set @s mkr_slot 5
execute if score @s mkr_point matches 1.. at @e[tag=loot_at_me,limit=1] facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 0
execute if score @s mkr_slot matches 1 if score @s mkr_point matches 1.. at @e[tag=loot_at_me,limit=1] facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 0
execute if score @s mkr_slot matches 2 if score @s mkr_point matches 1.. at @e[tag=loot_at_me,limit=1] positioned ~ ~ ~-2.5 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 0
execute if score @s mkr_slot matches 3 if score @s mkr_point matches 1.. at @e[tag=loot_at_me,limit=1] positioned ~ ~ ~2.5 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 0
execute if score @s mkr_slot matches 4 if score @s mkr_point matches 1.. at @e[tag=loot_at_me,limit=1] positioned ~-2.5 ~ ~ facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 0
execute if score @s mkr_slot matches 5 if score @s mkr_point matches 1.. at @e[tag=loot_at_me,limit=1] positioned ~2.5 ~ ~ facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 0
execute if score @s mkr_slot matches 1 if score @s mkr_point matches 1.. if predicate code:chance2 if score mkr_cooldown mkr_cd matches 0 run scoreboard players add @s mkr_speed 120

execute if score @s mkr_item matches 1..20 unless score @s mkr_item_cd matches 1.. if predicate code:chance3 run scoreboard players set @s mkr_item_use 1

tag @e[tag=loot_at_me] remove loot_at_me
tag @e[tag=ja] remove ja