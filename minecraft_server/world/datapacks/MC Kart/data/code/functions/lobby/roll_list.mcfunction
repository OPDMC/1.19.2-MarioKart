data modify storage list current set from storage list list[0]
data modify storage list list append from storage list current
data remove storage list list[0]
scoreboard players remove temp mkr_play_points2 1
execute if score temp mkr_play_points2 matches 1.. run function code:lobby/roll_list