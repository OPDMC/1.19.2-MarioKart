scoreboard players add mkr_final mkr_final 1
tag @s add mep
setblock 0 1 0 air
setblock 0 1 0 oak_sign{Text1:'{"selector":"@e[tag=mep]","color":"gold","bold":true}'} replace
tag @s remove mep
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 1 run data modify storage rec rec_pos set from storage rec1 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 1 run data modify storage rec rec_rot set from storage rec1 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 2 run data modify storage rec rec_pos set from storage rec2 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 2 run data modify storage rec rec_rot set from storage rec2 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 3 run data modify storage rec rec_pos set from storage rec3 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 3 run data modify storage rec rec_rot set from storage rec3 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 4 run data modify storage rec rec_pos set from storage rec4 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 4 run data modify storage rec rec_rot set from storage rec4 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 5 run data modify storage rec rec_pos set from storage rec5 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 5 run data modify storage rec rec_rot set from storage rec5 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 6 run data modify storage rec rec_pos set from storage rec6 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 6 run data modify storage rec rec_rot set from storage rec6 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 7 run data modify storage rec rec_pos set from storage rec7 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 7 run data modify storage rec rec_rot set from storage rec7 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 8 run data modify storage rec rec_pos set from storage rec8 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 8 run data modify storage rec rec_rot set from storage rec8 rec_rot
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 9 run data modify storage rec rec_pos set from storage rec9 rec_pos
execute if score mkr_final mkr_final matches 1 if score @s mkr_id matches 9 run data modify storage rec rec_rot set from storage rec9 rec_rot
execute if score mkr_final mkr_final matches 1 run data modify storage platz1 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 1 store result storage platz1 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 1 store result storage platz1 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 1 store result storage platz1 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 1 store result storage platz1 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 2 run data modify storage platz2 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 2 store result storage platz2 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 2 store result storage platz2 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 2 store result storage platz2 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 2 store result storage platz2 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 3 run data modify storage platz3 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 3 store result storage platz3 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 3 store result storage platz3 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 3 store result storage platz3 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 3 store result storage platz3 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 4 run data modify storage platz4 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 4 store result storage platz4 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 4 store result storage platz4 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 4 store result storage platz4 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 4 store result storage platz4 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 5 run data modify storage platz5 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 5 store result storage platz5 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 5 store result storage platz5 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 5 store result storage platz5 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 5 store result storage platz5 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 6 run data modify storage platz6 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 6 store result storage platz6 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 6 store result storage platz6 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 6 store result storage platz6 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 6 store result storage platz6 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 7 run data modify storage platz7 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 7 store result storage platz7 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 7 store result storage platz7 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 7 store result storage platz7 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 7 store result storage platz7 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 8 run data modify storage platz8 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 8 store result storage platz8 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 8 store result storage platz8 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 8 store result storage platz8 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 8 store result storage platz8 Coins int 1 run scoreboard players get @s mkr_coin
execute if score mkr_final mkr_final matches 9 run data modify storage platz9 String set from block 0 1 0 Text1
execute if score mkr_final mkr_final matches 9 store result storage platz9 Min int 1 run scoreboard players get @s mkr_min
execute if score mkr_final mkr_final matches 9 store result storage platz9 Sec int 1 run scoreboard players get @s mkr_sec
execute if score mkr_final mkr_final matches 9 store result storage platz9 10Sec int 1 run scoreboard players get @s mkr_10sec
execute if score mkr_final mkr_final matches 9 store result storage platz9 Coins int 1 run scoreboard players get @s mkr_coin
execute if score temp4 mkr_math matches 1 run effect give @s invisibility 999999 250 true
execute if score temp4 mkr_math matches 1 run tag @e[tag=mkr_ai_cart,distance=..2.5] remove mkr_ai_cart
execute if score temp4 mkr_math matches 1 run tag @s remove mkr_in
execute if score temp4 mkr_math matches 1 run tp @s ~ ~-100 ~
execute if score temp4 mkr_math matches 1 run kill @s
kill @e[tag=mkr_c_now]
kill @e[tag=mkr_c_top_now]

execute unless data entity @s EnderItems[0] run item replace entity @s enderchest.0 with clock{Times:[{Strecke:1,Min:5,Sec:0,10Sec:0},{Strecke:2,Min:5,Sec:0,10Sec:0},{Strecke:3,Min:5,Sec:0,10Sec:0},{Strecke:4,Min:5,Sec:0,10Sec:0}]}
execute if score @s mkr_strecke matches 1 store result score temp_min mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:1}].Min
execute if score @s mkr_strecke matches 1 store result score temp_sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:1}].Sec
execute if score @s mkr_strecke matches 1 store result score temp_10sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:1}].10Sec
execute if score @s mkr_strecke matches 2 store result score temp_min mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:2}].Min
execute if score @s mkr_strecke matches 2 store result score temp_sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:2}].Sec
execute if score @s mkr_strecke matches 2 store result score temp_10sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:2}].10Sec
execute if score @s mkr_strecke matches 3 store result score temp_min mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:3}].Min
execute if score @s mkr_strecke matches 3 store result score temp_sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:3}].Sec
execute if score @s mkr_strecke matches 3 store result score temp_10sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:3}].10Sec
execute if score @s mkr_strecke matches 4 store result score temp_min mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:4}].Min
execute if score @s mkr_strecke matches 4 store result score temp_sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:4}].Sec
execute if score @s mkr_strecke matches 4 store result score temp_10sec mkr_min run data get entity @s EnderItems[0].tag.Times[{Strecke:4}].10Sec

execute if score @s mkr_min < temp_min mkr_min run scoreboard players operation temp_sec mkr_min = @s mkr_sec
execute if score @s mkr_min < temp_min mkr_min run scoreboard players operation temp_10sec mkr_min = @s mkr_10sec
execute if score @s mkr_min < temp_min mkr_min run scoreboard players operation temp_min mkr_min = @s mkr_min

execute if score @s mkr_min = temp_min mkr_min if score @s mkr_sec < temp_sec mkr_min run scoreboard players operation temp_10sec mkr_min = @s mkr_10sec
execute if score @s mkr_min = temp_min mkr_min if score @s mkr_sec < temp_sec mkr_min run scoreboard players operation temp_sec mkr_min = @s mkr_sec

execute if score @s mkr_min = temp_min mkr_min if score @s mkr_sec = temp_sec mkr_min if score @s mkr_10sec < temp_10sec mkr_min run scoreboard players operation temp_10sec mkr_min = @s mkr_10sec

item replace block 0 0 0 container.0 from entity @s enderchest.0
execute if score @s mkr_strecke matches 1 store result block 0 0 0 Items[0].tag.Times[{Strecke:1}].Min int 1 run scoreboard players get temp_min mkr_min
execute if score @s mkr_strecke matches 1 store result block 0 0 0 Items[0].tag.Times[{Strecke:1}].Sec int 1 run scoreboard players get temp_sec mkr_min
execute if score @s mkr_strecke matches 1 store result block 0 0 0 Items[0].tag.Times[{Strecke:1}].10Sec int 1 run scoreboard players get temp_10sec mkr_min
execute if score @s mkr_strecke matches 2 store result block 0 0 0 Items[0].tag.Times[{Strecke:2}].Min int 1 run scoreboard players get temp_min mkr_min
execute if score @s mkr_strecke matches 2 store result block 0 0 0 Items[0].tag.Times[{Strecke:2}].Sec int 1 run scoreboard players get temp_sec mkr_min
execute if score @s mkr_strecke matches 2 store result block 0 0 0 Items[0].tag.Times[{Strecke:2}].10Sec int 1 run scoreboard players get temp_10sec mkr_min
execute if score @s mkr_strecke matches 3 store result block 0 0 0 Items[0].tag.Times[{Strecke:3}].Min int 1 run scoreboard players get temp_min mkr_min
execute if score @s mkr_strecke matches 3 store result block 0 0 0 Items[0].tag.Times[{Strecke:3}].Sec int 1 run scoreboard players get temp_sec mkr_min
execute if score @s mkr_strecke matches 3 store result block 0 0 0 Items[0].tag.Times[{Strecke:3}].10Sec int 1 run scoreboard players get temp_10sec mkr_min
execute if score @s mkr_strecke matches 4 store result block 0 0 0 Items[0].tag.Times[{Strecke:4}].Min int 1 run scoreboard players get temp_min mkr_min
execute if score @s mkr_strecke matches 4 store result block 0 0 0 Items[0].tag.Times[{Strecke:4}].Sec int 1 run scoreboard players get temp_sec mkr_min
execute if score @s mkr_strecke matches 4 store result block 0 0 0 Items[0].tag.Times[{Strecke:4}].10Sec int 1 run scoreboard players get temp_10sec mkr_min
item replace entity @s enderchest.0 from block 0 0 0 container.0

function code:engine/reset_scores
scoreboard players operation @s mkr_final = mkr_final mkr_final
scoreboard players set temp mkr_final 10
scoreboard players operation temp mkr_final -= @s mkr_final
scoreboard players operation @s money += temp mkr_final
execute if score @s mkr_final matches 1 run scoreboard players add @s mkr_stat6 1
execute if score @s mkr_final matches 1..3 run scoreboard players add @s mkr_stat5 1
execute if score @s mkr_final matches 4..9 run scoreboard players add @s mkr_stat7 1
scoreboard players set @s mkr_play_points 0
scoreboard players add @s mkr_stat8 1

stopsound @s master custom:cardriving
stopsound @s master custom:carbraking
stopsound @s master custom:carturbo

clear @s
tag @s remove mkr_driver