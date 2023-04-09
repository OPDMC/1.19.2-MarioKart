data modify entity @s Pos set from storage bot_rec rec_pos[0]
data modify entity @s Rotation set from storage bot_rec rec_rot[0]
data remove storage bot_rec rec_pos[0]
data remove storage bot_rec rec_rot[0]
tp @e[tag=mkr_rec_name] ~ ~2.9 ~