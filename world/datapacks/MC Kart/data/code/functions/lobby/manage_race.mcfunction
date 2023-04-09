execute if score mkr_strecke mkr_strecke matches 0 unless entity @a[tag=mkr_player] run scoreboard players set new_race mkr_cd 1200
execute if score mkr_strecke mkr_strecke matches 0 if entity @a[tag=mkr_player] if score new_race mkr_cd matches 1.. run scoreboard players remove new_race mkr_cd 1
execute if score mkr_strecke mkr_strecke matches 0 run bossbar set no_player visible true
execute if score mkr_strecke mkr_strecke matches 0 run bossbar set yes_player visible true
execute if score mkr_strecke mkr_strecke matches 0 store result bossbar no_player value run scoreboard players get new_race mkr_cd
execute if score mkr_strecke mkr_strecke matches 0 store result bossbar yes_player value run scoreboard players get new_race mkr_cd
execute if score mkr_strecke mkr_strecke matches 1.. run bossbar set no_player visible false
execute if score mkr_strecke mkr_strecke matches 1.. run bossbar set yes_player visible false

execute if score new_race mkr_cd matches 500 run tellraw @a " "
execute if score new_race mkr_cd matches 500 run tellraw @a " "
execute if score new_race mkr_cd matches 500 run tellraw @a " "
execute if score new_race mkr_cd matches 500 run tellraw @a {"text":"------- Next track: -------","color":"gray"}
execute if score new_race mkr_cd matches 500 if score next_race mkr_strecke matches 1 run tellraw @a {"text":".................... Bustle Bay ......................","color":"gray"}
execute if score new_race mkr_cd matches 500 if score next_race mkr_strecke matches 2 run tellraw @a {"text":"................... Viable Valley ..................","color":"gray"}
execute if score new_race mkr_cd matches 500 if score next_race mkr_strecke matches 3 run tellraw @a {"text":".............. Cursed Caverns .............","color":"gray"}
execute if score new_race mkr_cd matches 500 run tellraw @a {"text":"------------------------","color":"gray"}
execute if score new_race mkr_cd matches 500 run tellraw @a " "

execute if score new_race mkr_cd matches 200 run tellraw @a [{"text":"Next race will start in","color":"gray"},{"text":":","bold":true},{"text":" 10","color":"gold","bold":true},{"text":" sec","color":"gold"}]
execute if score new_race mkr_cd matches 100 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.4 1.5
execute if score new_race mkr_cd matches 100 run tellraw @a [{"text":"Next race will start in","color":"gray"},{"text":":","bold":true},{"text":" 5","color":"gold","bold":true},{"text":" sec","color":"gold"}]
execute if score new_race mkr_cd matches 80 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.4 1.5
execute if score new_race mkr_cd matches 80 run tellraw @a [{"text":"Next race will start in","color":"gray"},{"text":":","bold":true},{"text":" 4","color":"gold","bold":true},{"text":" sec","color":"gold"}]
execute if score new_race mkr_cd matches 60 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.4 1.5
execute if score new_race mkr_cd matches 60 run tellraw @a [{"text":"Next race will start in","color":"gray"},{"text":":","bold":true},{"text":" 3","color":"gold","bold":true},{"text":" sec","color":"gold"}]
execute if score new_race mkr_cd matches 40 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.4 1.5
execute if score new_race mkr_cd matches 40 run tellraw @a [{"text":"Next race will start in","color":"gray"},{"text":":","bold":true},{"text":" 2","color":"gold","bold":true},{"text":" sec","color":"gold"}]
execute if score new_race mkr_cd matches 20 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.4 1.5
execute if score new_race mkr_cd matches 20 run tellraw @a [{"text":"Next race will start in","color":"gray"},{"text":":","bold":true},{"text":" 1","color":"gold","bold":true},{"text":" sec","color":"gold"}]

execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data remove storage list list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run scoreboard players operation @s mkr_play_points2 = @s mkr_play_points
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/make_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run fill 0 0 0 0 0 0 dispenser
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run loot insert 0 0 0 loot code:random_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score temp mkr_play_points2 run data get block 0 0 0 Items[0].Count 1
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/roll_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run data modify storage list winner set from storage list list[0]
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run execute as @a[tag=mkr_player] run function code:lobby/list_choose
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 store result score list mkr_play_points2 run data get storage list list 
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run function code:lobby/check_list
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run schedule function code:new_race 20t
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run schedule function code:start_race2 34t
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run tag @a[tag=mkr_player] remove mkr_lobby
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run tag @a[tag=mkr_player] remove mkr_spectator
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run tag @a[tag=mkr_player] remove mkr_player
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run scoreboard players set start2 mkr_math 100
execute if score mkr_strecke mkr_strecke matches 0 if score new_race mkr_cd matches 0 run scoreboard players operation mkr_strecke mkr_strecke = next_race mkr_strecke
# marvin war hier 2022