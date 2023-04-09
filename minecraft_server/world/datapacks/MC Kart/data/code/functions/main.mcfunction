execute as @e[tag=mkr_ai] at @s if score @s mkr_strecke matches 1.. run function code:ai
execute as @e[tag=mkr_cart] if score @s mkr_id matches 0.. run scoreboard players remove @s mkr_id 1
scoreboard players set players_left mkr_math 0
execute as @e[tag=mkr_driver] at @s run function code:engine/drive
execute as @a[tag=mkr_bob] at @s run function code:bob
execute as @e[tag=mkr_cart] unless entity @s[tag=mkr_ai_cart] unless entity @s[tag=mkr_auscart] at @s unless score @s mkr_id matches 0.. if score mkr_cooldown mkr_cd matches 0 run kill @e[tag=mkr_cart_top,limit=1,sort=nearest]
execute as @e[tag=mkr_cart] unless entity @s[tag=mkr_ai_cart] unless entity @s[tag=mkr_auscart] at @s unless score @s mkr_id matches 0.. if score mkr_cooldown mkr_cd matches 0 run kill @s

execute if score mkr_strecke mkr_strecke matches 1.. run function code:engine/race_handling

execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=mkr_coin] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run function code:engine/coin
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=mkr_item] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run function code:engine/item
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=mkr_banana] at @s run function code:items/banana
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=mkr_bomb] at @s run function code:items/bomb
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=mkr_fire] at @s run function code:items/fireflower
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=mkr_rec] at @s run function code:engine/record_playing
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=red_shell] at @s run function code:items/red_shell02
execute if score mkr_strecke mkr_strecke matches 1.. as @e[tag=blue_shell] at @s run function code:items/blue_shell02

execute as @e[tag=mkr_cart] at @s unless entity @e[distance=..0.7,limit=1,sort=nearest,tag=mkr_driver] run data merge entity @s {NoAI:1b}
execute as @e[tag=mkr_cart] at @s if entity @e[distance=..0.7,limit=1,sort=nearest,tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 run data merge entity @s {NoAI:0b}

kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},tag=!nokill]
kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]

execute as @a[scores={mkr_leave=1..}] run clear @s
execute as @a[scores={mkr_leave=1..}] run tag @s remove mkr_lobby
execute as @a[scores={mkr_leave=1..}] run tag @s remove mkr_spectator
execute as @a[scores={mkr_leave=1..}] run tag @s remove mkr_driver
execute as @a[scores={mkr_leave=1..}] run tag @s remove mkr_player
execute as @a[scores={mkr_leave=1..}] run function code:engine/reset_scores

execute as @a at @s run function code:lobby/main

execute if score start mkr_math matches 1 run scoreboard players set new_race mkr_cd 1200
function code:lobby/manage_race
execute if score start2 mkr_math matches 1.. run scoreboard players remove start2 mkr_math 1