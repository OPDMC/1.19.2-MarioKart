execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run tp @s -401 5 66 -90 0
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run gamemode adventure @s
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run scoreboard players set @s mkr_hotbar 1
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run bossbar set no_player players
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run bossbar set yes_player players
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run bossbar set no_player players @a[tag=!mkr_player]
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run bossbar set yes_player players @a[tag=mkr_player]
execute if entity @s[tag=!mkr_lobby,tag=!mkr_driver,tag=!mkr_spectator] run tag @s add mkr_lobby

execute unless score next_race mkr_strecke matches 1.. run scoreboard players set next_race mkr_strecke 1
execute unless score community mkr_stat6 matches 0.. run scoreboard players set community mkr_stat6 0

execute if entity @s[tag=mkr_spectator] run gamemode spectator @s

execute unless score @s mkr_play_points matches 0.. run scoreboard players set @s mkr_play_points 2

scoreboard players set all_points mkr_play_points 0
execute as @a[tag=mkr_lobby] run scoreboard players operation all_points mkr_play_points += @s mkr_play_points
scoreboard players operation temp mkr_play_points = #10000 mkr_math
scoreboard players operation temp mkr_play_points /= all_points mkr_play_points
scoreboard players operation temp mkr_play_points *= @s mkr_play_points
scoreboard players set temp2 mkr_play_points 100
scoreboard players operation temp mkr_play_points /= temp2 mkr_play_points
scoreboard players set temp2 mkr_play_points 9
scoreboard players operation temp mkr_play_points *= temp2 mkr_play_points
execute if score temp mkr_play_points matches 100.. run scoreboard players set temp mkr_play_points 99

execute if entity @s[tag=mkr_lobby,tag=!mkr_player] if score @s mkr_hotbar matches 1 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"PLAY","bold": true,"color":"green"}'},CustomModelData:101} 1
execute if entity @s[tag=mkr_lobby,tag=mkr_player] if score @s mkr_hotbar matches 1 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"LEAVE PLAYERS","bold": true,"color":"red"}'},CustomModelData:102} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 run item replace entity @s hotbar.0 with written_book{display:{Name:'{"text":"Guide","color":"gold","bold":true,"italic":true}',Lore:['{"text":"------------","color":"yellow"}','{"text":"This book contains","color":"gray","bold":false,"italic":true}','{"text":"every detail about","color":"gray","bold":false,"italic":true}','{"text":"this game!","color":"gray","bold":false,"italic":true}']},title:"",author:"",pages:['[{"text":"     - Guide -","color":"gold","bold":true},{"text":"\\n\\nWelcome to ","color":"dark_gray","bold":false},{"text":"MC Kart","color":"dark_gray"},{"text":"! A game that is inspired by Nintendo\'s racing game: Mario Kart.","color":"dark_gray","bold":false},{"text":"\\n-------------------","color":"gray","bold":false},{"text":"\\n\\nYou will find:","bold":false},{"text":"\\n\\n [About this game]","color":"dark_gray","clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n [How to play]","color":"dark_gray","clickEvent":{"action":"change_page","value":"3"}},{"text":"\\n [Items]","color":"dark_gray","clickEvent":{"action":"change_page","value":"6"}},{"text":"\\n [Credits]","color":"dark_gray","clickEvent":{"action":"change_page","value":"15"}}]','[{"text":"[Back]","color":"gold","clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n  About this game","bold":true},{"text":"\\n\\nIn this game you are facing 8 other players in a race and your goal is to be the fastest among them.\\n\\nDuring the race you will collect items and coins which will help you to achieve this goal.","color":"dark_gray"}]','[{"text":"[Back]","color":"gold","clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n     How to play","bold":true},{"text":"\\n\\nRight-click the item in the middle of your hotbar and join the queue. The Driver chance shows you an approximate  probability of being a driver next round.\\n\\nOnce the race has started simply look","color":"dark_gray"}]','{"text":"in the direction you want to drive. You can collect items through itemboxes. Use them with right click.\\n\\nCollecting coins gives you a small boost on acceleration.\\n10 & 15 Coins: +30%\\n20 Coins: 18.4%+ Grip\\n\\nIn the lobby you can:\\nRead this guide,    ->","color":"dark_gray"}','{"text":"Join/leave queue, Spectate the ongoing game, View your statistics and Change settings.\\n\\nIf you get stuck, dismount your kart or leave and rejoin the server.","color":"dark_gray"}','[{"text":"[Back]","color":"gold","clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n  List of all items","bold":true},{"text":"\\n\\nMushroom","color":"dark_gray","bold":true},{"text":"\\nOnce used, the Mushroom will boost the kart in its facing direction. The Mushroom can also appear in groups of three, meaning it can be used three times.","color":"dark_gray"}]','[{"text":"Banana","color":"dark_gray","bold":true},{"text":"\\nThe Banana can be used per right-click and will be shot out behind the kart. Just like the Mushroom, Bananas sometimes appear in groups of three, meaning it can be used three times.","bold":false},{"text":"\\n\\nCoin"},{"text":"\\nA Coin can also appear as an item.","bold":false}]','[{"text":"Right-clicking this item will grant the driver +1 Coin. Read more about the Coin\'s function in \\"How to play\\".","color":"dark_gray"},{"text":"\\n\\nRed Shell","bold":true},{"text":"\\nAnother item is the Red Shell. Once activated, the Shell will move and stun the next ranked player. The last three places"}]','[{"text":"have the chance of obtaining triple Red Shells, wich can be used three times.","color":"dark_gray"},{"text":"\\n\\nFire Flower","bold":true},{"text":"\\nThe Fire Flower can be used just like a snowball and will, on impact, stun the target. A player receives only three shots per item, so use them with care!"}]','[{"text":"Blue Shell","color":"dark_gray","bold":true},{"text":"\\nThe Blue Shell is a very powerful item, only obtained by the last few places. Upon activation, this shell will travel to the first place and stun on a high level.","bold":false},{"text":"\\n\\nSquid"},{"text":"\\nThe Squid will, once used, smear ink onto the all other drivers","bold":false}]','[{"text":"windshields. The effect will last a few seconds and can grant the user a visual advantage.","color":"dark_gray"},{"text":"\\n\\nLightning","bold":true},{"text":"\\nLightnings are very rare items, they stun all players and also cancel all ongoing boosts. Use this item and annoy all your opponents!"}]','[{"text":"Star","color":"dark_gray","bold":true},{"text":"\\nThe Star one of the best items, since it not only grants the driver temporary invulnerability, but also temporary increases the speed of the kart. Once activated the Star also stuns any nearby opponents.","bold":false}]','[{"text":"Golden Mushroom","color":"dark_gray","bold":true},{"text":"\\nThe final item on the list is the Golden Mushroom. It works just like regular mushrooms,\\nexcept it can be clicked many times until its depletion. The Boosts are almost as strong as regular Mushroom boosts.","bold":false}]','{"text":"The secret item \\"Pietbauer\\" can be thrown and acts as a decoy. The Pietbauer will cluelessly run around and confuse players as well as the AI, making it the perfect imaginary item. The Ability \\"Inspirational Hopping\\" will make the foxes jump like a bag of Popping Popcorn.","color":"dark_gray"}','[{"text":"[Back]","color":"gold","clickEvent":{"action":"change_page","value":"1"}},{"text":"\\nCredits","bold":true},{"text":"\\n\\nMany models, gameplay mechanics and designs are inspired by Nintendo and their game Mario Kart. It is not a replica! It is just inspired by the style of Nintendo\'s game.","color":"dark_gray"}]','[{"text":"Resource pack","color":"dark_gray","bold":true},{"text":"\\n\\nSome sounds in this resource pack are from ","bold":false},{"text":"Freesound","color":"blue","bold":false,"underlined":true,"clickEvent":{"action":"open_url","value":"https://freesound.org/"}},{"text":". Detailed credits of each sound are in the \\"Credits.txt\\" file in the root folder of the resource pack.","bold":false}]','{"text":"This game was created by SkyBlock Squad! Thank you everyone who tested with us.\\n\\n\\n\\n\\n\\n\\n\\nAnd if you are reading this... you are cool!   -Piet & Marvin","color":"dark_gray"}']} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"SPECTATE","bold": true,"color":"aqua"}'},CustomModelData:103} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 unless data entity @s Inventory[{Slot:7b,id:"minecraft:written_book"}] run clear @s written_book
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 unless data entity @s Inventory[{Slot:7b,id:"minecraft:written_book"}] run tag @s add b
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 unless data entity @s Inventory[{Slot:7b,id:"minecraft:written_book"}] at @s run function code:lobby/stats_book
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 unless data entity @s Inventory[{Slot:7b,id:"minecraft:written_book"}] run tag @s remove b
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 unless data entity @s Inventory[{Slot:7b,id:"minecraft:written_book"}] run item replace entity @s hotbar.7 from block -430 16 70 container.0
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"PERSONAL SETTINGS","bold": true,"color":"gray"}'},CustomModelData:104} 1

execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"SHOP","bold": true,"color":"gold"}'},CustomModelData:107} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 3.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"BACK","bold": true,"color":"gold"}'},CustomModelData:107} 1
# shop übersicht
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 3 run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"KART SKINS","bold": true,"color":"aqua"}'},CustomModelData:108} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 3 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"KART TRAILS","bold": true,"color":"yellow"}'},CustomModelData:109} 1
# kart übersicht
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"STANDART KARTS","color":"aqua","bold":true},{"text":" [Expand]","color":"gray","bold":false}]'},CustomModelData:110} 1
# standart karts farben
execute if entity @s[tag=mkr_lobby,tag=!kartskin_1] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"KART RED ","color":"aqua","bold":true},{"text":"Free","color":"gray","bold":false}]'},CustomModelData:111} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_1] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"KART RED ","color":"aqua","bold":true},{"text":"Free","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:111} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_2] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"KART BROWN ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:112} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_2] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"KART BROWN ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:112} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_3] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"KART BLUE ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:113} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_3] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"KART BLUE ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:113} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_4] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"KART GREEN ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:114} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_4] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"KART GREEN ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:114} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_5] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"KART BLACK ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:115} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_5] if score @s mkr_hotbar matches 5 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"KART BLACK ","color":"aqua","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:115} 1
# kart übersicht
execute if entity @s[tag=mkr_lobby,tag=!kartskin_6] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"BOBBY KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false}]'},CustomModelData:116} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_6] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"BOBBY KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:116} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_7] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"MOUSE KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false}]'},CustomModelData:117} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_7] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"MOUSE KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:117} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_8] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"BATHTUBE KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false}]'},CustomModelData:118} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_8] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"BATHTUBE KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:118} 1
execute if entity @s[tag=mkr_lobby,tag=!kartskin_9] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"OLD TIMER KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false}]'},CustomModelData:131} 1
execute if entity @s[tag=mkr_lobby,tag=kartskin_9] if score @s mkr_hotbar matches 4 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"OLD TIMER KART ","color":"aqua","bold":true},{"text":"100 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:131} 1
# trails page 1
execute if entity @s[tag=mkr_lobby,tag=!trail_1] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"STANDART TRAIL ","color":"yellow","bold":true},{"text":"Free","color":"gray","bold":false}]'},CustomModelData:119} 1
execute if entity @s[tag=mkr_lobby,tag=trail_1] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"STANDART TRAIL ","color":"yellow","bold":true},{"text":"Free","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:119} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_2] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"SMOKE AND FIRE TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:120} 1
execute if entity @s[tag=mkr_lobby,tag=trail_2] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"SMOKE AND FIRE TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:120} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_3] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"FLAME TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:121} 1
execute if entity @s[tag=mkr_lobby,tag=trail_3] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"FLAME TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:121} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_4] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"SOUL TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:122} 1
execute if entity @s[tag=mkr_lobby,tag=trail_4] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"SOUL TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:122} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_5] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'[{"text":"FOREST SOUL TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:123} 1
execute if entity @s[tag=mkr_lobby,tag=trail_5] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'[{"text":"FOREST SOUL TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:123} 1
# trails page 2
execute if entity @s[tag=mkr_lobby,tag=!trail_6] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"HEART TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:124} 1
execute if entity @s[tag=mkr_lobby,tag=trail_6] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"HEART TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:124} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_7] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"RAINBOW TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:125} 1
execute if entity @s[tag=mkr_lobby,tag=trail_7] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"RAINBOW TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:125} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_8] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"UNDERWATER TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:126} 1
execute if entity @s[tag=mkr_lobby,tag=trail_8] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"UNDERWATER TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:126} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_9] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"MAGICAL TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:127} 1
execute if entity @s[tag=mkr_lobby,tag=trail_9] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"MAGICAL TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:127} 1
execute if entity @s[tag=mkr_lobby,tag=!trail_10] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'[{"text":"STAR TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false}]'},CustomModelData:128} 1
execute if entity @s[tag=mkr_lobby,tag=trail_10] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'[{"text":"STAR TRAIL ","color":"yellow","bold":true},{"text":"50 Coins","color":"gray","bold":false},{"text":" [Bought]","color":"dark_green","bold":true}]'},CustomModelData:128} 1
# page seiten für trails
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 6 run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"PAGE 2","bold": true,"color":"gold"}'},CustomModelData:130} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 7 run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"PAGE 1","bold": true,"color":"gold"}'},CustomModelData:129} 1

execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 2 run item replace entity @s[tag=mkr_wasd] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"WASD MOVEMENT: ON","bold": true,"color":"gray"}'},CustomModelData:105} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 2 run item replace entity @s[tag=!mkr_wasd] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"WASD MOVEMENT: OFF","bold": true,"color":"gray"}'},CustomModelData:105} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 2 run item replace entity @s[tag=!mkr_nosounds] hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"ENGINE SOUNDS: ON","bold": true,"color":"gray"}'},CustomModelData:106} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 2 run item replace entity @s[tag=mkr_nosounds] hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"ENGINE SOUNDS: OFF","bold": true,"color":"gray"}'},CustomModelData:106} 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 2 run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"BACK","bold": true,"color":"gray"}'},CustomModelData:104} 1

scoreboard players set item_id mkr_item 0
execute if entity @s[tag=mkr_lobby] if score @s mkr_item_use matches 1.. store result score item_id mkr_item run data get entity @s SelectedItem.tag.CustomModelData
execute if entity @s[tag=mkr_lobby] if score @s mkr_item_use matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=mkr_lobby] if score @s mkr_item_use matches 1.. run scoreboard players set @s mkr_item_use 0

execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 if score item_id mkr_item matches 101 if score mkr_strecke mkr_strecke matches 0 run tag @s add used
execute if entity @s[tag=used] run tag @s add mkr_player
execute if entity @s[tag=used] run tp @s -453 11 67 -90 0
execute if entity @s[tag=used] run title @s times 0 0 8
execute if entity @s[tag=used] run title @s title "\uE000"
execute if entity @s[tag=used] run bossbar set minecraft:yes_player players
execute if entity @s[tag=used] run bossbar set yes_player players @a[tag=mkr_player]
execute if entity @s[tag=used] run bossbar set minecraft:no_player players
execute if entity @s[tag=used] run bossbar set no_player players @a[tag=!mkr_player]
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 if score item_id mkr_item matches 102 if score mkr_strecke mkr_strecke matches 0 run tag @s add used
execute if entity @s[tag=used] run tag @s remove mkr_player
execute if entity @s[tag=used] run tp @s -451 5 63 -90 0
execute if entity @s[tag=used] run title @s times 0 0 8
execute if entity @s[tag=used] run title @s title "\uE000"
execute if entity @s[tag=used] run bossbar set minecraft:no_player players
execute if entity @s[tag=used] run bossbar set no_player players @a[tag=!mkr_player]
execute if entity @s[tag=used] run bossbar set minecraft:yes_player players
execute if entity @s[tag=used] run bossbar set yes_player players @a[tag=mkr_player]
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 if score item_id mkr_item matches 103 if score mkr_strecke mkr_strecke matches 0 run tellraw @s {"text":"There is currently no ongoing race you could spectate!","color":"red","bold":true}
execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 if score item_id mkr_item matches 103 if score mkr_strecke mkr_strecke matches 1.. run tag @s add used
execute if entity @s[tag=used] run tag @s add mkr_spectator
execute if entity @s[tag=used] run tag @s remove mkr_lobby
execute if entity @s[tag=used] run tag @s add temps
execute if entity @s[tag=used] run execute as @e[tag=mkr_strecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run tp @a[tag=temps] ~ ~1 ~
execute if entity @s[tag=used] run tag @s remove temps
execute if entity @s[tag=used] run title @s times 0 5 8
execute if entity @s[tag=used] run title @s title "\uE000"
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby] if score @s mkr_hotbar matches 1 if score item_id mkr_item matches 104 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 2
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 2 if score item_id mkr_item matches 104 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 1
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 2 if score item_id mkr_item matches 105 run tag @s add used
execute if entity @s[tag=used,tag=!mkr_wasd] run tag @s add add_wasd
execute if entity @s[tag=used,tag=add_wasd] run tag @s add mkr_wasd
execute if entity @s[tag=used,tag=!add_wasd] run tag @s remove mkr_wasd
execute if entity @s[tag=used] run tag @s remove add_wasd
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 2 if score item_id mkr_item matches 106 run tag @s add used
execute if entity @s[tag=used,tag=!mkr_nosounds] run tag @s add add_sounds
execute if entity @s[tag=used,tag=add_sounds] run tag @s add mkr_nosounds
execute if entity @s[tag=used,tag=!add_sounds] run tag @s remove mkr_nosounds
execute if entity @s[tag=used] run tag @s remove add_sounds
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 1 if score item_id mkr_item matches 107 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 3
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 3 if score item_id mkr_item matches 108 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 4
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 3 if score item_id mkr_item matches 109 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 6
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6 if score item_id mkr_item matches 130 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 7
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 7 if score item_id mkr_item matches 129 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 6
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 4 if score item_id mkr_item matches 110 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 5
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 3 if score item_id mkr_item matches 107 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 1
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 4 if score item_id mkr_item matches 107 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 3
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 5 if score item_id mkr_item matches 107 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 4
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6..7 if score item_id mkr_item matches 107 run tag @s add used
execute if entity @s[tag=used] run clear @s
execute if entity @s[tag=used] run scoreboard players set @s mkr_hotbar 3
execute if entity @s[tag=used] run tag @s add nomore
effect give @s saturation 999999 250 true

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 5 if score item_id mkr_item matches 111 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_1] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=!kartskin_1] run tag @s add kartskin_1
execute if entity @s[tag=used,tag=kartskin_1] run scoreboard players set @s mkr_skin 0
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 5 if score item_id mkr_item matches 112 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_2] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add kartskin_2
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_2] run scoreboard players set @s mkr_skin 5
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 5 if score item_id mkr_item matches 113 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_3] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add kartskin_3
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_3] run scoreboard players set @s mkr_skin 6
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 5 if score item_id mkr_item matches 114 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_4] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add kartskin_4
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_4] run scoreboard players set @s mkr_skin 7
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 5 if score item_id mkr_item matches 115 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_5] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add kartskin_5
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_5] run scoreboard players set @s mkr_skin 4
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 4 if score item_id mkr_item matches 116 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_6] if score @s money matches 100.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 100
execute if entity @s[tag=bought] run tag @s add kartskin_6
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_6] run scoreboard players set @s mkr_skin 1
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 4 if score item_id mkr_item matches 117 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_7] if score @s money matches 100.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 100
execute if entity @s[tag=bought] run tag @s add kartskin_7
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_7] run scoreboard players set @s mkr_skin 2
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 4 if score item_id mkr_item matches 118 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_8] if score @s money matches 100.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 100
execute if entity @s[tag=bought] run tag @s add kartskin_8
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_8] run scoreboard players set @s mkr_skin 3
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 4 if score item_id mkr_item matches 131 run tag @s add used
execute if entity @s[tag=used,tag=!kartskin_9] if score @s money matches 100.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 100
execute if entity @s[tag=bought] run tag @s add kartskin_9
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=kartskin_9] run scoreboard players set @s mkr_skin 8
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6 if score item_id mkr_item matches 119 run tag @s add used
execute if entity @s[tag=used,tag=!trail_1] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=!trail_1] run tag @s add trail_1
execute if entity @s[tag=used,tag=trail_1] run scoreboard players set @s mkr_trail 0
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6 if score item_id mkr_item matches 120 run tag @s add used
execute if entity @s[tag=used,tag=!trail_2] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_2
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_2] run scoreboard players set @s mkr_trail 1
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6 if score item_id mkr_item matches 121 run tag @s add used
execute if entity @s[tag=used,tag=!trail_3] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_3
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_3] run scoreboard players set @s mkr_trail 2
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6 if score item_id mkr_item matches 122 run tag @s add used
execute if entity @s[tag=used,tag=!trail_4] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_4
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_4] run scoreboard players set @s mkr_trail 3
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 6 if score item_id mkr_item matches 123 run tag @s add used
execute if entity @s[tag=used,tag=!trail_5] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_5
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_5] run scoreboard players set @s mkr_trail 4
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 7 if score item_id mkr_item matches 124 run tag @s add used
execute if entity @s[tag=used,tag=!trail_6] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_6
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_6] run scoreboard players set @s mkr_trail 5
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 7 if score item_id mkr_item matches 125 run tag @s add used
execute if entity @s[tag=used,tag=!trail_7] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_7
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_7] run scoreboard players set @s mkr_trail 6
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 7 if score item_id mkr_item matches 126 run tag @s add used
execute if entity @s[tag=used,tag=!trail_8] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_8
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_8] run scoreboard players set @s mkr_trail 7
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 7 if score item_id mkr_item matches 127 run tag @s add used
execute if entity @s[tag=used,tag=!trail_9] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_9
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_9] run scoreboard players set @s mkr_trail 8
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used

execute if entity @s[tag=mkr_lobby,tag=!nomore] if score @s mkr_hotbar matches 7 if score item_id mkr_item matches 128 run tag @s add used
execute if entity @s[tag=used,tag=!trail_10] if score @s money matches 50.. run tag @s add bought
execute if entity @s[tag=bought] run scoreboard players remove @s money 50
execute if entity @s[tag=bought] run tag @s add trail_10
execute if entity @s[tag=bought] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if entity @s[tag=used,tag=trail_10] run scoreboard players set @s mkr_trail 9
execute if entity @s[tag=used] run tag @s remove bought
execute if entity @s[tag=used] run tag @s add nomore

execute if entity @s[tag=used] run tag @s remove used
tag @s remove nomore
execute if score item_id mkr_item matches 1.. run scoreboard players operation test mkr_item = item_id mkr_item

execute if entity @s[tag=!mkr_driver] if score @s mkr_hotbar matches 1.. if score mkr_strecke mkr_strecke matches 0 run title @s actionbar [{"text":"\u0020Coins","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"money"},"color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score @s mkr_hotbar matches 1.. if score mkr_strecke mkr_strecke matches 1.. run title @s actionbar ["",{"text":"Driver chance","bold":true,"color":"green"},{"text":": ","color":"gray"},{"score":{"name":"temp","objective":"mkr_play_points"},"color":"aqua"},{"text":"% ","color":"aqua"},{"text":" |","color":"gray"},{"text":" \u0020Coins","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"money"},"color":"aqua"},{"text":" |","color":"gray"},{"text":" Drivers left: ","bold":true,"color":"green"},{"score":{"name":"players_left","objective":"mkr_math"},"color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s " "
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1 run tellraw @s ["",{"text":"      Bustle Bay ","bold":true,"color":"green"},{"text":"-","bold":true,"color":"gray"},{"text":" Current placings","bold":true,"color":"aqua"},{"text":":","bold":true,"color":"gray"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 2 run tellraw @s ["",{"text":"      Viable Valley ","bold":true,"color":"green"},{"text":"-","bold":true,"color":"gray"},{"text":" Current placings","bold":true,"color":"aqua"},{"text":":","bold":true,"color":"gray"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 3 run tellraw @s ["",{"text":"      Cursed Caverns ","bold":true,"color":"green"},{"text":"-","bold":true,"color":"gray"},{"text":" Current placings","bold":true,"color":"aqua"},{"text":":","bold":true,"color":"gray"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"1. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=1}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"2. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=2}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"3. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=3}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"4. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=4}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"5. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=5}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"6. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=6}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"7. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=7}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"8. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=8}]","color":"aqua"}]
execute if entity @s[tag=!mkr_driver] if score mkr_strecke mkr_strecke matches 1.. run tellraw @s ["",{"text":"9. \u0020","bold":true,"color":"green"},{"selector":"@e[scores={mkr_final=9}]","color":"aqua"}]