execute if score mkr_cooldown mkr_cd matches 1.. run scoreboard players set @a[tag=mkr_driver] mkr_item 0
execute if score mkr_cooldown mkr_cd matches 1.. run scoreboard players set @a[tag=mkr_driver] mkr_sound_drive 584
execute if score mkr_cooldown mkr_cd matches 1.. run scoreboard players set @a[tag=mkr_driver] mkr_item_cd 0
execute if score mkr_cooldown mkr_cd matches 1.. run scoreboard players set @a[tag=mkr_driver] mkr_item_count 0
execute if score mkr_cooldown mkr_cd matches 1.. run execute as @e[tag=mkr_strecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run tag @s add now
execute if score mkr_cooldown mkr_cd matches 1..399 run execute as @e[tag=now] at @s if score @s mkr_dir matches 1 positioned ~4 ~ ~ as @a[tag=mkr_driver,distance=7.20..] run tp @s ~ ~ ~
execute if score mkr_cooldown mkr_cd matches 1..399 run execute as @e[tag=now] at @s if score @s mkr_dir matches 2 positioned ~ ~ ~4 as @a[tag=mkr_driver,distance=7.20..] run tp @s ~ ~ ~
execute if score mkr_cooldown mkr_cd matches 1..399 run execute as @e[tag=now] at @s if score @s mkr_dir matches 3 positioned ~-4 ~ ~ as @a[tag=mkr_driver,distance=7.20..] run tp @s ~ ~ ~
execute if score mkr_cooldown mkr_cd matches 1..399 run execute as @e[tag=now] at @s if score @s mkr_dir matches 4 positioned ~ ~ ~-4 as @a[tag=mkr_driver,distance=7.20..] run tp @s ~ ~ ~
execute if score mkr_cooldown mkr_cd matches 1..399 run effect give @e[tag=mkr_cart] slowness 999999 250 true
execute if score mkr_cooldown mkr_cd matches 0 run tag @e remove now
execute if score mkr_cooldown mkr_cd matches 400 run item replace entity @e[tag=mkr_cart] weapon.mainhand with minecraft:diamond{CustomModelData:101}
execute if score mkr_cooldown mkr_cd matches 100 run title @a times 1 8 7

execute if score mkr_cooldown mkr_cd matches 650 run effect give @a[tag=mkr_driver] invisibility 999999 250 true
execute if score mkr_cooldown mkr_cd matches 570 run title @a[tag=mkr_driver] times 10 0 30
execute if score mkr_cooldown mkr_cd matches 570 run title @a[tag=mkr_driver] title "\uE000"
execute if score mkr_cooldown mkr_cd matches 490 run title @a[tag=mkr_driver] title "\uE000"
execute if score mkr_cooldown mkr_cd matches 410 run title @a[tag=mkr_driver] title "\uE000"
execute if score mkr_cooldown mkr_cd matches 400 run effect clear @a[tag=mkr_driver] invisibility

execute if score mkr_cooldown mkr_cd matches 560..650 if score mkr_strecke mkr_strecke matches 1 run tp @a[tag=mkr_driver] -189.4 57.8 24.4 -16.7 19.6
execute if score mkr_cooldown mkr_cd matches 560..650 if score mkr_strecke mkr_strecke matches 2 run tp @a[tag=mkr_driver] 523.1 60.9 270.4 167.4 7
execute if score mkr_cooldown mkr_cd matches 560..650 if score mkr_strecke mkr_strecke matches 3 run tp @a[tag=mkr_driver] 11.10 48.77 51.42 -48.16 3.27

execute if score mkr_cooldown mkr_cd matches 480..560 if score mkr_strecke mkr_strecke matches 1 run tp @a[tag=mkr_driver] -243.8 30.8 268.2 -145.6 4.9
execute if score mkr_cooldown mkr_cd matches 480..560 if score mkr_strecke mkr_strecke matches 2 run tp @a[tag=mkr_driver] 340.3 71.4 283.9 -147.9 14.8
execute if score mkr_cooldown mkr_cd matches 480..560 if score mkr_strecke mkr_strecke matches 3 run tp @a[tag=mkr_driver] 69.19 42.79 346.22 572.92 9.85

execute if score mkr_cooldown mkr_cd matches 400..480 if score mkr_strecke mkr_strecke matches 1 run tp @a[tag=mkr_driver] -300.9 18.7 217.1 -162.6 13.5
execute if score mkr_cooldown mkr_cd matches 400..480 if score mkr_strecke mkr_strecke matches 2 run tp @a[tag=mkr_driver] 335 65.3 148.5 -111.9 6.3
execute if score mkr_cooldown mkr_cd matches 400..480 if score mkr_strecke mkr_strecke matches 3 run tp @a[tag=mkr_driver] 254.38 62.28 254.64 493.86 7.89

execute if score mkr_cooldown mkr_cd matches 1.. run scoreboard players remove mkr_cooldown mkr_cd 1
execute store result bossbar mkr_cooldown value run scoreboard players get mkr_cooldown mkr_cd
execute if score mkr_cooldown mkr_cd matches 0 run bossbar set mkr_cooldown visible false
execute if score mkr_cooldown mkr_cd matches 0 run scoreboard players add mkr_end mkr_cd 1

execute if score mkr_end mkr_cd matches 6000.. run stopsound @a[tag=mkr_driver] master custom:cardriving
execute if score mkr_end mkr_cd matches 6000.. run stopsound @a[tag=mkr_driver] master custom:carbraking
execute if score mkr_end mkr_cd matches 6000.. run stopsound @a[tag=mkr_driver] master custom:carturbo
execute if score mkr_end mkr_cd matches 6000.. run tag @e[tag=mkr_driver] remove mkr_driver
execute if score mkr_end mkr_cd matches 6000.. run scoreboard players reset @a mkr_strecke
execute if score mkr_end mkr_cd matches 6000.. run kill @e[tag=mkr_ai]
execute unless entity @a[tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 if score start2 mkr_math matches 1.. run scoreboard players set start2 mkr_math -1
execute unless entity @a[tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 run tag @e[tag=mkr_driver] remove mkr_driver
execute unless entity @a[tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 run scoreboard players reset @a mkr_strecke
execute unless entity @a[tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 run kill @e[tag=mkr_ai]

execute if score mkr_cooldown mkr_cd matches 2.. run scoreboard players set @e[tag=mkr_driver] mkr_speed 0
execute if score mkr_cooldown mkr_cd matches 1 run title @a title ["",{"text":"---","bold":true,"color":"dark_red"},{"text":"--","bold":true,"color":"gold"},{"text":" GO","bold":true,"color":"green"},{"text":" --","bold":true,"color":"gold"},{"text":"---","bold":true,"color":"dark_red"}]
execute if score mkr_cooldown mkr_cd matches 20 run title @a title ["",{"text":"---","bold":true,"color":"dark_red"},{"text":"--","bold":true,"color":"gold"},{"text":" 1","bold":true,"color":"gold"},{"text":" --","bold":true,"color":"gold"},{"text":"---","bold":true,"color":"dark_red"}]
execute if score mkr_cooldown mkr_cd matches 40 run title @a title ["",{"text":"---","bold":true,"color":"dark_red"},{"text":"-","bold":true,"color":"gold"},{"text":"- ","bold":true,"color":"gray"},{"text":"2","bold":true,"color":"gold"},{"text":" -","bold":true,"color":"gray"},{"text":"-","bold":true,"color":"gold"},{"text":"---","bold":true,"color":"dark_red"}]
execute if score mkr_cooldown mkr_cd matches 60 run title @a title ["",{"text":"---","bold":true,"color":"dark_red"},{"text":"-- ","bold":true,"color":"gray"},{"text":"3","bold":true,"color":"dark_red"},{"text":" --","bold":true,"color":"gray"},{"text":"---","bold":true,"color":"dark_red"}]
execute if score mkr_cooldown mkr_cd matches 80 run title @a title ["",{"text":"--","bold":true,"color":"dark_red"},{"text":"--- ","bold":true,"color":"gray"},{"text":"4","bold":true,"color":"dark_red"},{"text":" ---","bold":true,"color":"gray"},{"text":"--","bold":true,"color":"dark_red"}]
execute if score mkr_cooldown mkr_cd matches 100 run title @a title ["",{"text":"-","bold":true,"color":"dark_red"},{"text":"---- ","bold":true,"color":"gray"},{"text":"5","bold":true,"color":"dark_red"},{"text":" ----","bold":true,"color":"gray"},{"text":"-","bold":true,"color":"dark_red"}]
execute if score mkr_cooldown mkr_cd matches 1 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.890899
execute if score mkr_cooldown mkr_cd matches 1 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.781797
execute if score mkr_cooldown mkr_cd matches 20 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.594604
execute if score mkr_cooldown mkr_cd matches 40 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.594604
execute if score mkr_cooldown mkr_cd matches 60 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.594604
execute if score mkr_cooldown mkr_cd matches 80 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.594604
execute if score mkr_cooldown mkr_cd matches 100 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.594604

execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl1 players @a[scores={mkr_id=1}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl2 players @a[scores={mkr_id=2}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl3 players @a[scores={mkr_id=3}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl4 players @a[scores={mkr_id=4}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl5 players @a[scores={mkr_id=5}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl6 players @a[scores={mkr_id=6}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl7 players @a[scores={mkr_id=7}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl8 players @a[scores={mkr_id=8}]
execute if score mkr_cooldown mkr_cd matches 1 run bossbar set mkr_pl9 players @a[scores={mkr_id=9}]

execute if score mkr_cooldown mkr_cd matches 1 run scoreboard players set @a[tag=mkr_driver] mkr_speed 200
execute if score mkr_cooldown mkr_cd matches 1 run execute as @e[tag=mkr_point,scores={mkr_point=1}] at @s run summon firework_rocket ~ ~0.3 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;7654400,12124077],FadeColors:[I;2578727]}]}}}}

scoreboard players set mkr_finally mkr_final 0
execute unless entity @e[tag=mkr_driver] run scoreboard players set mkr_finally mkr_final 1

execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute as @e[tag=mkr_strecke] if score @s mkr_strecke = mkr_strecke mkr_strecke run tag @s add imthe
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run tag @e[tag=mkr_ai_cart] remove mkr_ai_cart
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[tag=red_shell]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[tag=blue_shell]
scoreboard players operation temp1 mkr_min = @e[tag=imthe,limit=1] mkr_10sec
scoreboard players operation temp2 mkr_min = @e[tag=imthe,limit=1] mkr_sec
scoreboard players operation temp3 mkr_min = @e[tag=imthe,limit=1] mkr_min
scoreboard players set temp4 mkr_min 0
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score min mkr_min run data get storage platz1 Min 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score sec mkr_sec run data get storage platz1 Sec 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score 10sec mkr_10sec run data get storage platz1 10Sec 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score @e[tag=imthe,limit=1] mkr_10sec if score min mkr_min < @e[tag=imthe,limit=1] mkr_min run scoreboard players get 10sec mkr_10sec
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score @e[tag=imthe,limit=1] mkr_sec if score min mkr_min < @e[tag=imthe,limit=1] mkr_min run scoreboard players get sec mkr_sec
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score @e[tag=imthe,limit=1] mkr_min if score min mkr_min < @e[tag=imthe,limit=1] mkr_min run scoreboard players get min mkr_min
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score @e[tag=imthe,limit=1] mkr_10sec if score min mkr_min = @e[tag=imthe,limit=1] mkr_min if score sec mkr_sec < @e[tag=imthe,limit=1] mkr_sec run scoreboard players get 10sec mkr_10sec
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score @e[tag=imthe,limit=1] mkr_sec if score min mkr_min = @e[tag=imthe,limit=1] mkr_min if score sec mkr_sec < @e[tag=imthe,limit=1] mkr_sec run scoreboard players get sec mkr_sec
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. store result score @e[tag=imthe,limit=1] mkr_10sec if score min mkr_min = @e[tag=imthe,limit=1] mkr_min if score sec mkr_sec = @e[tag=imthe,limit=1] mkr_sec if score 10sec mkr_10sec < @e[tag=imthe,limit=1] mkr_10sec run scoreboard players get 10sec mkr_10sec

execute if score start2 mkr_math matches 0 unless score temp1 mkr_min = @e[tag=imthe,limit=1] mkr_10sec run scoreboard players set temp4 mkr_min 1
execute if score start2 mkr_math matches 0 unless score temp2 mkr_min = @e[tag=imthe,limit=1] mkr_sec run scoreboard players set temp4 mkr_min 1
execute if score start2 mkr_math matches 0 unless score temp3 mkr_min = @e[tag=imthe,limit=1] mkr_min run scoreboard players set temp4 mkr_min 1
execute if score start2 mkr_math matches 0 if score temp4 mkr_min matches 1 run data modify entity @e[tag=imthe,limit=1] data.Best set from storage platz1 String
execute if score start2 mkr_math matches 0 if score temp4 mkr_min matches 1 run data modify entity @e[tag=imthe,limit=1] data.rec_pos set from storage rec rec_pos
execute if score start2 mkr_math matches 0 if score temp4 mkr_min matches 1 run data modify entity @e[tag=imthe,limit=1] data.rec_rot set from storage rec rec_rot

execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run summon armor_stand 0 1 0 {CustomNameVisible:1b,Tags:["shep"],CustomName:'{"text":"-Empty-"}'}
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a " "
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz1 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 1.. run tellraw @a [{"text":"   1. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz1","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz1","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz1","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz1","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 2.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz2 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 2.. run tellraw @a [{"text":"   2. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz2","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz2","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz2","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz2","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 3.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz3 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 3.. run tellraw @a [{"text":"   3. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz3","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz3","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz3","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz3","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 4.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz4 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 4.. run tellraw @a [{"text":"   4. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz4","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz4","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz4","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz4","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 5.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz5 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 5.. run tellraw @a [{"text":"   5. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz5","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz5","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz5","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz5","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 6.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz6 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 6.. run tellraw @a [{"text":"   6. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz6","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz6","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz6","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz6","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 7.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz7 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 7.. run tellraw @a [{"text":"   7. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz7","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz7","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz7","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz7","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 8.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz8 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 8.. run tellraw @a [{"text":"   8. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz8","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz8","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz8","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz8","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 9.. run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:platz9 String
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score mkr_final mkr_final matches 9.. run tellraw @a [{"text":"   9. ","color":"gray","bold":true},{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":"  "},{"nbt":"Min","storage":"platz9","color":"yellow","bold":true,"italic":true},{"text":" Min, ","color":"yellow","bold":false,"italic":true},{"nbt":"Sec","storage":"platz9","color":"yellow","bold":true,"italic":true},{"text":",","color":"yellow","bold":false,"italic":true},{"nbt":"10Sec","storage":"platz9","color":"yellow","bold":true,"italic":true},{"text":" Sec","color":"yellow","bold":false,"italic":true},{"text":"   Coins: ","color":"gold","bold":false,"italic":false},{"nbt":"Coins","storage":"platz9","color":"gold","bold":true}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. run data modify entity @e[tag=shep,limit=1] CustomName set from entity @e[tag=imthe,limit=1] data.Best
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. if score mkr_strecke mkr_strecke matches 1 run data modify block -439 11 61 Text2 set from entity @e[tag=shep,limit=1] CustomName
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. if score mkr_strecke mkr_strecke matches 1 run data merge block -439 11 61 {Text3:'[{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_min"},"color":"gold"},{"text":" Min, ","color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_sec"},"color":"gold"},{"text":",","color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_10sec"},"color":"gold"},{"text":" Sec","color":"gray"}]'}
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. if score mkr_strecke mkr_strecke matches 2 run data modify block -433 11 61 Text2 set from entity @e[tag=shep,limit=1] CustomName
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. if score mkr_strecke mkr_strecke matches 2 run data merge block -433 11 61 {Text3:'[{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_min"},"color":"gold"},{"text":" Min, ","color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_sec"},"color":"gold"},{"text":",","color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_10sec"},"color":"gold"},{"text":" Sec","color":"gray"}]'}
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. if score mkr_strecke mkr_strecke matches 3 run data modify block -436 11 61 Text2 set from entity @e[tag=shep,limit=1] CustomName
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0.. if score mkr_strecke mkr_strecke matches 3 run data merge block -436 11 61 {Text3:'[{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_min"},"color":"gold"},{"text":" Min, ","color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_sec"},"color":"gold"},{"text":",","color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_10sec"},"color":"gold"},{"text":" Sec","color":"gray"}]'}
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 0 run tellraw @a ["",{"text":"Record for this race: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_min"},"color":"gray"},{"text":" Min, ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_sec"},"color":"gray"},{"text":",","italic":true,"color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_10sec"},"color":"gray"},{"text":" Sec driven by ","italic":true,"color":"gray"},{"selector":"@e[tag=shep]","color":"gray"}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score temp4 mkr_min matches 1.. run tellraw @a ["",{"text":"NEW","bold":true,"color":"aqua"},{"text":" Record for this race: ","bold":true,"color":"gray"},{"score":{"name":"temp3","objective":"mkr_min"},"color":"yellow"},{"text":" M,","bold":true,"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"temp2","objective":"mkr_min"},"color":"yellow"},{"text":",","bold":true,"color":"yellow"},{"score":{"name":"temp1","objective":"mkr_min"},"color":"yellow"},{"text":" S","bold":true,"color":"yellow"},{"text":" -> ","bold":true,"color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_min"},"bold":true,"color":"gold"},{"text":" Min, ","bold":true,"color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_sec"},"bold":true,"color":"gold"},{"text":",","bold":true,"color":"gray"},{"score":{"name":"@e[tag=imthe,limit=1]","objective":"mkr_10sec"},"bold":true,"color":"gold"},{"text":" Sec driven by ","bold":true,"color":"gray"},{"selector":"@e[tag=shep]","bold":true,"color":"aqua"}]

tag @e[tag=imthe] remove imthe
tag @a[tag=topp] remove topp

execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[type=end_crystal]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute as @e[tag=mkr_ecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run forceload remove ~ ~ ~191 ~191
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute as @e[tag=mkr_ecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run forceload add 0 0
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute as @e[tag=mkr_ecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run forceload add ~ ~
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl1 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl2 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl3 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl4 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl5 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl6 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl7 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl8 players
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run bossbar set minecraft:mkr_pl9 players

execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute as @a run function code:engine/reset_scores
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run scoreboard players set mkr_strecke mkr_strecke 0
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run scoreboard players add community mkr_stat8 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run title @a[tag=mkr_spectator] times 0 5 8
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run title @a[tag=mkr_spectator] title "\uE000"
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run tag @a[tag=mkr_spectator] remove mkr_lobby
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run tag @a[tag=mkr_spectator] remove mkr_driver
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run tag @a[tag=mkr_spectator] remove mkr_spectator
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run scoreboard players add next_race mkr_strecke 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute if score next_race mkr_strecke matches 4.. run scoreboard players set next_race mkr_strecke 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[tag=shep]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[tag=mkr_rec]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run kill @e[tag=mkr_rec_name]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run clear @a
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run scoreboard players add @a mkr_play_points 1
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run team empty drivers
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run scoreboard players set change mkr_stat6 0
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute as @a run function code:lobby/check_best
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute if score change mkr_stat6 matches 1 run summon armor_stand 0 1 0 {CustomNameVisible:1b,Tags:["shep"],CustomName:'{"text":"-Empty-"}'}
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute if score change mkr_stat6 matches 1 run data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:best name
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute if score change mkr_stat6 matches 1 run tellraw @a [{"selector":"@e[tag=shep]","color":"gold","bold":true},{"text":" is the best player now. With ","color":"white","bold":false},{"score":{"name":"community","objective":"mkr_stat6"}},{"text":" wins!","color":"white","bold":false}]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 run execute if score change mkr_stat6 matches 1 run kill @e[tag=shep]
execute if score start2 mkr_math matches 0 if score mkr_finally mkr_final matches 1 if score start2 mkr_math matches 0 run setblock -439 16 65 minecraft:redstone_block
execute unless entity @a[tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 if score start2 mkr_math matches -1 run tellraw @a {"text":"Joine die Queue bitte neu! (Grüner Hacken in der Hotbar)","color":"white","bold":true}
execute unless entity @a[tag=mkr_driver] if score mkr_cooldown mkr_cd matches 0 run scoreboard players set mkr_strecke mkr_strecke 0