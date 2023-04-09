execute as @e[tag=mkr_strecke] if score @s mkr_strecke = mkr_strecke mkr_strecke run tag @s add mee

tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s [{"text":"          MC","color":"gold","bold":true,"italic":true},{"text":" Kart","color":"#FFC847"},{"text":"  by ","color":"#7D7D7D","bold":false},{"text":"Sk","color":"#919191"},{"text":"yBl","color":"#A8A8A8"},{"text":"ock","color":"#C7C7C7"},{"text":"Squ","color":"#A8A8A8"},{"text":"ad","color":"#919191"}]
tellraw @s " "
tellraw @s " "
tellraw @s ["",{"text":" Placing:","bold":true,"color":"gray"},{"text":" \u0020 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"mkr_platz"},"bold":true,"color":"gold"},{"text":" -","bold":true,"color":"gray"},{"text":" "},{"selector":"@s","italic":true,"color":"gray"}]
tellraw @s " "
tellraw @s " "
tellraw @s ["",{"text":" Round:","bold":true,"color":"gray"},{"text":" \u0020 ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"mkr_round"},"bold":true,"color":"gold"},{"text":" /","bold":true,"color":"gray"},{"text":" "},{"score":{"name":"@e[tag=mee,limit=1]","objective":"mkr_round"},"italic":true,"color":"gray"}]
tellraw @s " "
tellraw @s " "
tellraw @s " "

tag @e[tag=mee] remove mee