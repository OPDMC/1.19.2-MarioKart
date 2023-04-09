data modify storage list winner_temp set from storage list winner
execute store success score suc mkr_play_points2 run data modify storage list winner_temp set from storage list list[0]
execute if score suc mkr_play_points2 matches 1 run data modify storage list current set from storage list list[0]
execute if score suc mkr_play_points2 matches 1 run data modify storage list list append from storage list current
execute if score suc mkr_play_points2 matches 1 run data remove storage list list[0]
execute if score suc mkr_play_points2 matches 0 run data remove storage list list[0]
scoreboard players remove list mkr_play_points2 1
execute if score list mkr_play_points2 matches 1.. run function code:lobby/check_list