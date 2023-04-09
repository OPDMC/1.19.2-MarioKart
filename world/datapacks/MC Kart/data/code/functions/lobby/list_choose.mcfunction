data modify storage list winner_temp set from storage list winner
execute store success score suc mkr_play_points2 run data modify storage list winner_temp set from entity @s UUID
execute if score suc mkr_play_points2 matches 0 run tag @s remove mkr_player
execute if score suc mkr_play_points2 matches 0 run tag @s add mkr_driver