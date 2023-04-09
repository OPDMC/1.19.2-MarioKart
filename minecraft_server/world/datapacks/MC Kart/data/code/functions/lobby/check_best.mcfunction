execute if score @s mkr_stat6 > community mkr_stat6 run scoreboard players set change mkr_stat6 1
execute if score @s mkr_stat6 > community mkr_stat6 run tag @s add bestboi
execute if score @s mkr_stat6 > community mkr_stat6 run data merge block 0 1 0 {Color:"-1",Text1:'{"selector":"@a[tag=bestboi]"}'}
execute if score @s mkr_stat6 > community mkr_stat6 run data modify storage best name set from block 0 1 0 Text1
execute if score @s mkr_stat6 > community mkr_stat6 run tag @s remove bestboi
execute if score @s mkr_stat6 > community mkr_stat6 run scoreboard players operation community mkr_stat6 = @s mkr_stat6