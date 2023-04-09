scoreboard players remove @s mkr_play_points2 1
data modify storage list list append from entity @s UUID
execute if score @s mkr_play_points2 matches 1.. run function code:lobby/make_list