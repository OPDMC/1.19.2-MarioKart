#players left
scoreboard players add players_left mkr_math 1

#showing strecke stats am start
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s [{"text":"     Track ","color":"gray","bold":false},{"score":{"name":"mkr_strecke","objective":"mkr_strecke"},"color":"gray","bold":true},{"text":" - ","color":"aqua","bold":true},{"nbt":"data.Name","entity":"@e[tag=mkr_strecke,limit=1,sort=nearest]","color":"white","bold":true,"italic":true}]
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s [{"text":"     Rounds: ","color":"gray"},{"score":{"name":"@e[tag=mkr_strecke,limit=1,sort=nearest]","objective":"mkr_round"},"color":"aqua","bold":true}]
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "
execute if score mkr_cooldown mkr_cd matches 380 if score @s mkr_strecke matches 1 run tellraw @s [{"text":"     Personal Best-Time: ","color":"gray","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:1}].Min","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Min, ","color":"gold","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:1}].Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":",","color":"gold","bold":false,"italic":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:1}].10Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Sec","color":"gold","bold":false,"italic":true}]
execute if score mkr_cooldown mkr_cd matches 380 if score @s mkr_strecke matches 2 run tellraw @s [{"text":"     Personal Best-Time: ","color":"gray","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:2}].Min","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Min, ","color":"gold","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:2}].Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":",","color":"gold","bold":false,"italic":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:2}].10Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Sec","color":"gold","bold":false,"italic":true}]
execute if score mkr_cooldown mkr_cd matches 380 if score @s mkr_strecke matches 3 run tellraw @s [{"text":"     Personal Best-Time: ","color":"gray","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:3}].Min","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Min, ","color":"gold","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:3}].Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":",","color":"gold","bold":false,"italic":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:3}].10Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Sec","color":"gold","bold":false,"italic":true}]
execute if score mkr_cooldown mkr_cd matches 380 if score @s mkr_strecke matches 4 run tellraw @s [{"text":"     Personal Best-Time: ","color":"gray","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:4}].Min","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Min, ","color":"gold","bold":false,"italic":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:4}].Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":",","color":"gold","bold":false,"italic":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:4}].10Sec","entity":"@s","color":"gold","bold":false,"italic":false},{"text":" Sec","color":"gold","bold":false,"italic":true}]
execute if score mkr_cooldown mkr_cd matches 380 run tellraw @s " "

#Tests if someone is in a cart
execute if data entity @s {RootVehicle:{Entity:{id:"minecraft:fox"}}} run tag @s add mkr_in
execute if entity @s[tag=mkr_ai] run tag @s add mkr_in

scoreboard players set temp4 mkr_math 0
execute if entity @s[tag=mkr_ai] run scoreboard players set temp4 mkr_math 1
execute unless entity @s[tag=mkr_in] unless entity @s[tag=mkr_ai] if score mkr_cooldown mkr_cd matches 0 if score mkr_strecke mkr_strecke matches 1.. run scoreboard players set temp4 mkr_math 2

#Sounds

execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches ..300 run scoreboard players set @s mkr_sound_drive 584
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches ..300 run stopsound @s master custom:cardriving
execute if score temp4 mkr_math matches 2 run scoreboard players set @s mkr_sound_drive 584
execute if score temp4 mkr_math matches 2 run stopsound @s master custom:cardriving

execute if score temp4 mkr_math matches 0 run scoreboard players add @s mkr_sound_drive 1
execute if score temp4 mkr_math matches 0 if score @s mkr_sound_drive matches 586.. run scoreboard players set @s mkr_sound_drive 0
execute if score temp4 mkr_math matches 0 if score @s mkr_sound_drive matches 0 run playsound custom:cardriving master @s[tag=!mkr_nosounds] ~ ~ ~ 0.15 1
execute if score temp4 mkr_math matches 0 if score @s mkr_sound_brake matches 1 run playsound custom:carbraking master @s[tag=!mkr_nosounds] ~ ~ ~ 0.15 1.1
execute if score temp4 mkr_math matches 0 if score @s mkr_sound_turbo matches 1 run playsound custom:carturbo master @s[tag=!mkr_nosounds] ~ ~ ~ 0.15 1.1

#Checkpoints
execute if score temp4 mkr_math matches 0 store result score temp5 mkr_point run scoreboard players get @e[tag=mkr_point,limit=1,sort=nearest] mkr_point
execute if score temp4 mkr_math matches 0 run tag @s add jep
execute if score temp4 mkr_math matches 0 if score temp5 mkr_point matches 3.. if score @s mkr_point matches 1 run tag @s remove jep
execute if entity @s[tag=jep] run scoreboard players operation @s mkr_point = temp5 mkr_point
tag @s remove jep

#Timer actionbar
execute if score @s mkr_strecke matches 1.. run title @s actionbar [{"text":"Time: ","color":"gray","bold":true},{"score":{"name":"@s","objective":"mkr_min"},"color":"gold","bold":true},{"text":" Min, ","color":"gray","bold":true},{"score":{"name":"@s","objective":"mkr_sec"},"color":"gold","bold":true},{"text":",","color":"gray","bold":true},{"score":{"name":"@s","objective":"mkr_10sec"},"color":"gold","bold":true},{"text":" Sec | Coins: ","color":"gray","bold":true},{"score":{"name":"@s","objective":"mkr_coin"},"color":"gold","bold":true}]

#zielliene
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-1.8 ~ black_concrete if block ~ ~-2.8 ~ diamond_block run scoreboard players add @s mkr_round 1
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-1.8 ~ black_concrete if block ~ ~-2.8 ~ diamond_block run playsound entity.player.levelup master @s ~ ~ ~ 1 2
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-1.8 ~ white_concrete if block ~ ~-2.8 ~ diamond_block run scoreboard players add @s mkr_round 1
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-1.8 ~ white_concrete if block ~ ~-2.8 ~ diamond_block run playsound entity.player.levelup master @s ~ ~ ~ 1 2
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-1.8 ~ black_concrete if block ~ ~-2.8 ~ diamond_block run scoreboard players set @s mkr_point 1
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-1.8 ~ white_concrete if block ~ ~-2.8 ~ diamond_block run scoreboard players set @s mkr_point 1

execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-0.8 ~ black_concrete if block ~ ~-1.8 ~ diamond_block run scoreboard players add @s mkr_round 1
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-0.8 ~ black_concrete if block ~ ~-1.8 ~ diamond_block run playsound entity.player.levelup master @s ~ ~ ~ 1 2
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-0.8 ~ white_concrete if block ~ ~-1.8 ~ diamond_block run scoreboard players add @s mkr_round 1
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-0.8 ~ white_concrete if block ~ ~-1.8 ~ diamond_block run playsound entity.player.levelup master @s ~ ~ ~ 1 2
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-0.8 ~ black_concrete if block ~ ~-1.8 ~ diamond_block run scoreboard players set @s mkr_point 1
execute if score temp4 mkr_math matches 0 if score @s mkr_point >= mkr_point mkr_point if block ~ ~-0.8 ~ white_concrete if block ~ ~-1.8 ~ diamond_block run scoreboard players set @s mkr_point 1
execute as @e[tag=mkr_strecke] if score @s mkr_strecke = mkr_strecke mkr_strecke store result score temp4 mkr_round run scoreboard players get @s mkr_round
execute if score @s mkr_round > temp4 mkr_round if block ~ ~-2.8 ~ diamond_block run gamemode spectator @s
execute if score @s mkr_round > temp4 mkr_round if block ~ ~-2.8 ~ diamond_block run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16777215,0]}]}}}}
execute if score @s mkr_round > temp4 mkr_round if block ~ ~-2.8 ~ diamond_block run function code:engine/add_final
execute if score @s mkr_round > temp4 mkr_round if block ~ ~-1.8 ~ diamond_block run gamemode spectator @s
execute if score @s mkr_round > temp4 mkr_round if block ~ ~-1.8 ~ diamond_block run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16777215,0]}]}}}}
execute if score @s mkr_round > temp4 mkr_round if block ~ ~-1.8 ~ diamond_block run function code:engine/add_final

#progress
scoreboard players operation progress mkr_progress = @s mkr_round
scoreboard players remove progress mkr_progress 1
scoreboard players operation progress mkr_progress *= mkr_point mkr_point
scoreboard players operation progress mkr_progress += @s mkr_point
scoreboard players operation @s mkr_progress = progress mkr_progress

#wenn ausn cart ausgestiegen
execute if score temp4 mkr_math matches 2 run scoreboard players operation temps mkr_point = @s mkr_point
execute if score temp4 mkr_math matches 2 run scoreboard players operation temps mkr_strecke = @s mkr_strecke
execute if score temp4 mkr_math matches 2 run tag @s add mkr_ausgestiegen
execute if score temp4 mkr_math matches 2 as @e[tag=mkr_point] if score @s mkr_strecke = temps mkr_strecke if score @s mkr_point = temps mkr_point at @s unless entity @a[tag=mkr_ausgestiegen,distance=..3.5] run tp @a[tag=mkr_ausgestiegen] ~ ~ ~
execute if score temp4 mkr_math matches 2 as @e[tag=mkr_point] if score @s mkr_strecke = temps mkr_strecke if score @s mkr_point = temps mkr_point at @s unless entity @e[tag=mkr_auscart,distance=..1.5] run summon fox ~ ~1 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart","mkr_auscart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:101}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

tag @s remove mkr_ausgestiegen

#comparing
scoreboard players set temp4 mkr_platz 1
scoreboard players operation temp4 mkr_progress = @s mkr_progress
tag @s add nows
execute as @e[tag=mkr_driver] unless entity @s[tag=nows] unless score @s mkr_final matches 0.. run execute if score temp4 mkr_progress < @s mkr_progress run scoreboard players add temp4 mkr_platz 1
tag @s remove nows
scoreboard players operation temp4 mkr_platz += mkr_final mkr_final
execute unless score @s mkr_final matches 0.. run scoreboard players operation @s mkr_platz = temp4 mkr_platz
execute if score mkr_cooldown mkr_cd matches 0 unless score @s mkr_final matches 0.. unless score mkr_strecke mkr_strecke matches 0 run function code:engine/show_stats

#item collecting
execute if entity @s[tag=mkr_colecteditem] unless score @s mkr_item matches 1.. run scoreboard players set @s mkr_item 100
execute if score @s mkr_item matches 100 run playsound custom:itemrolling master @s ~ ~ ~ 1 1
execute if score @s mkr_item matches 100 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling...","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1001} 1
execute if score @s mkr_item matches 97 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1003} 1
execute if score @s mkr_item matches 94 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling.","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1005} 1
execute if score @s mkr_item matches 91 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1006} 1
execute if score @s mkr_item matches 88 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling...","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1007} 1
execute if score @s mkr_item matches 85 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1008} 1
execute if score @s mkr_item matches 82 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling.","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1009} 1
execute if score @s mkr_item matches 79 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1010} 1
execute if score @s mkr_item matches 76 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling...","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1011} 1
execute if score @s mkr_item matches 73 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1012} 1
execute if score @s mkr_item matches 70 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling.","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1014} 1
execute if score @s mkr_item matches 67 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1001} 1
execute if score @s mkr_item matches 64 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling...","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1003} 1
execute if score @s mkr_item matches 61 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1005} 1
execute if score @s mkr_item matches 58 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling.","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1006} 1
execute if score @s mkr_item matches 55 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1007} 1
execute if score @s mkr_item matches 52 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling...","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1008} 1
execute if score @s mkr_item matches 49 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1009} 1
execute if score @s mkr_item matches 46 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling.","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1010} 1
execute if score @s mkr_item matches 43 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1011} 1
execute if score @s mkr_item matches 40 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling...","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1012} 1
execute if score @s mkr_item matches 37 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1014} 1
execute if score @s mkr_item matches 34 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling.","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1001} 1
execute if score @s mkr_item matches 31 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rolling..","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1003} 1
execute if score @s mkr_item matches 31.. run scoreboard players remove @s mkr_item 1
execute if score @s mkr_item matches 30 run tag @s remove mkr_colecteditem
execute if score @s mkr_item matches 30 run scoreboard players add @s mkr_stat2 1
execute if score @s mkr_item matches 30 run fill 0 0 0 0 0 0 dispenser
execute if score @s mkr_item matches 30 if score @s mkr_platz matches 1..3 run loot insert 0 0 0 loot code:items_1
execute if score @s mkr_item matches 30 if score @s mkr_platz matches 4..6 run loot insert 0 0 0 loot code:items_2
execute if score @s mkr_item matches 30 if score @s mkr_platz matches 7..9 run loot insert 0 0 0 loot code:items_3
execute if score @s mkr_item matches 30 store result score temp mkr_item run data get block 0 0 0 Items[0].tag.CustomModelData
execute if score @s mkr_item matches 30 run scoreboard players remove temp mkr_item 1000
execute if score @s mkr_item matches 30 store result score @s mkr_item_count run data get block 0 0 0 Items[0].Count
execute if score @s mkr_item matches 30 if score temp mkr_item matches 2 run scoreboard players set @s mkr_item_count 3
execute if score @s mkr_item matches 30 if score temp mkr_item matches 2 run scoreboard players set temp mkr_item 1
execute if score @s mkr_item matches 30 if score temp mkr_item matches 4 run scoreboard players set @s mkr_item_count 3
execute if score @s mkr_item matches 30 if score temp mkr_item matches 4 run scoreboard players set temp mkr_item 3
execute if score @s mkr_item matches 30 if score temp mkr_item matches 8 run scoreboard players set @s mkr_item_count 3
execute if score @s mkr_item matches 30 if score temp mkr_item matches 13 run scoreboard players set @s mkr_item_count 3
execute if score @s mkr_item matches 30 if score temp mkr_item matches 13 run scoreboard players set temp mkr_item 12
execute if score @s mkr_item matches 30 run scoreboard players operation @s mkr_item = temp mkr_item

#Item using


#list
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 1 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 3 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 5 run scoreboard players set @s mkr_item_cd 70
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 6 run scoreboard players set @s mkr_item_cd 130
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 7 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 8 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 9 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 10 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 11 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 12 run scoreboard players set @s mkr_item_cd 1
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. if score @s mkr_item matches 14 run scoreboard players set @s mkr_item_cd 1

#Golden Shroom
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 5 if score @s mkr_item_use matches 1.. run scoreboard players add @s[scores={mkr_speed=..980}] mkr_speed 180
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 5 if score @s mkr_item_use matches 1.. run playsound custom:boost master @s ~ ~ ~ 0.7 1.3

#Squid
execute if score @s mkr_ink matches 1.. run scoreboard players remove @s mkr_ink 1
execute if score @s mkr_ink matches 1..110 run particle minecraft:squid_ink ~ ~1 ~ 0.2 0.4 0.2 0 2
execute if score @s mkr_ink matches 139 run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 1 1
execute if score @s mkr_ink matches 111 run playsound minecraft:entity.squid.hurt master @s ~ ~ ~ 1 0.8
execute if score @s mkr_ink matches 111 run title @s times 0 80 80
execute if score @s mkr_ink matches 111 run title @s title "\uE001"

#Item use
execute if score @s mkr_item_use matches 1.. if score @s mkr_item_count matches 1.. run scoreboard players remove @s mkr_item_count 1
execute if score @s mkr_item_use matches 1.. run scoreboard players reset @s mkr_item_use


#list
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 1 run scoreboard players add @s mkr_stat1 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 1 run scoreboard players add community mkr_stat1 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 1 run scoreboard players add @s mkr_speed 380
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 1 run playsound custom:boost master @s ~ ~ ~ 0.7 1.3
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 3 run summon item ~ ~ ~ {PickupDelay:32767,Motion:[0.0,0.4,0.0],Tags:["mkr_banana","setsc","nokill"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1003}}}
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 3 run playsound custom:throwing master @s ~ ~ ~ 0.9 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 3 run scoreboard players set @e[tag=setsc] mkr_cd 20
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 3 run tag @e[tag=setsc] remove setsc
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 6 run scoreboard players set @s mkr_speed 1000
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 6 run scoreboard players set @e[tag=mkr_driver,distance=0.2..1.7] mkr_stun 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 6 run particle minecraft:end_rod ~ ~1.3 ~ 0.3 0.6 0.3 0.1 3 force @a
execute if score @s mkr_item_cd matches 130 if score @s mkr_item matches 6 run playsound custom:star master @a ~ ~ ~ 0.7 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 7 run scoreboard players operation mkr mkr_platz = @s mkr_platz
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 7 run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 2 2
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 7 run execute as @e[tag=mkr_driver] at @s if score @s mkr_platz < mkr mkr_platz run function code:items/blitz
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 if score temp4 mkr_math matches 1 run execute facing entity @e[tag=mkr_driver,limit=1,sort=nearest,distance=0.2..] eyes run tp @s ~ ~ ~ ~ ~
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.5
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run summon snowball ^ ^1.9 ^1 {Motion:[0.0,1.0,0.0],Tags:["mkr_fire"],Item:{id:"minecraft:fire_charge",Count:1b}}
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run summon area_effect_cloud ~ ~ ~ {Tags:["mkr_area"]}
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run execute rotated as @s as @e[tag=mkr_area] positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.7
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run data modify entity @e[tag=mkr_fire,limit=1,sort=nearest] Motion set from entity @e[tag=mkr_area,limit=1] Pos
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run scoreboard players operation @e[tag=mkr_fire,limit=1,sort=nearest] mkr_id = @s mkr_id
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 8 run tag @e[tag=mkr_area] remove mkr_area
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 9 run summon item ~ ~ ~ {PickupDelay:32767,Motion:[0.0,0.5,0.0],Tags:["mkr_bomb","setsc","nokill"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1009}}}
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 9 run playsound custom:throwing master @s ~ ~ ~ 0.9 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 9 run scoreboard players set @e[tag=setsc] mkr_cd 60
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 9 run tag @e[tag=setsc] remove setsc
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 10 run scoreboard players add @s mkr_coin 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 10 run scoreboard players add @s mkr_stat4 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 10 run scoreboard players add community mkr_stat4 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 11 run playsound custom:throwing master @s ~ ~ ~ 0.9 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 11 run execute as @e[tag=mkr_driver,distance=0.001..] at @s run scoreboard players set @s mkr_ink 140
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 12 run playsound custom:throwing master @s ~ ~ ~ 0.9 0.9
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 12 run scoreboard players operation opfer mkr_cd = @s mkr_platz
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 12 run scoreboard players remove opfer mkr_cd 1
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 12 run scoreboard players set opfer mkr_math 0
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 12 at @s run function code:items/red_shell
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 14 run playsound custom:throwing master @s ~ ~ ~ 0.9 0.9
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 14 run scoreboard players set opfer mkr_math 0
execute if score @s mkr_item_cd matches 1.. if score @s mkr_item matches 14 at @s run function code:items/blue_shell


execute if score @s mkr_item_cd matches 1.. run scoreboard players remove @s mkr_item_cd 1

execute if score @s mkr_item_cd matches 0 if score @s mkr_item_count matches 0 unless entity @s[tag=mkr_colecteditem] run scoreboard players set @s mkr_item 0

#Item showing
execute if score @s mkr_item matches 0 run clear @s carrot_on_a_stick

#list
execute if score @s mkr_item matches 1 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Boost-Shroom","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1001} 1
execute if score @s mkr_item matches 3 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Bananaa","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1003} 1
execute if score @s mkr_item matches 5 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Golden Boost-Shroom","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1005} 1
execute if score @s mkr_item matches 6 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Star","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1006} 1
execute if score @s mkr_item matches 7 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Lightning","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1007} 1
execute if score @s mkr_item matches 8 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Fire Flower","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1008} 1
execute if score @s mkr_item matches 9 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Bomb-omb","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1009} 1
execute if score @s mkr_item matches 10 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Coin","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1010} 1
execute if score @s mkr_item matches 11 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Squid","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1011} 1
execute if score @s mkr_item matches 12 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Red Shell","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1012} 1
execute if score @s mkr_item matches 14 run item replace block 0 0 0 container.0 with carrot_on_a_stick{display:{Name:'{"text":"Blue Shell","color":"gold","bold":true}'},Unbreakable:1b,CustomModelData:1014} 1


execute unless score @s mkr_item matches 5 if score @s mkr_item matches 1.. store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get @s mkr_item_count

execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s hotbar.8 from block 0 0 0 container.0
execute if score @s mkr_item matches 1..14 run item replace entity @s weapon.mainhand from block 0 0 0 container.0

#Braking
execute unless entity @s[tag=mkr_ai] unless score @s[tag=mkr_in] mkr_slot matches 0.. store result score @s[tag=mkr_in] mkr_slot run data get entity @s[tag=mkr_in] SelectedItemSlot
execute unless entity @s[tag=mkr_ai] store result score temp mkr_slot run data get entity @s[tag=mkr_in] SelectedItemSlot
execute unless entity @s[tag=mkr_ai] unless score @s[tag=mkr_in] mkr_slot = temp mkr_slot run scoreboard players add @s[tag=mkr_in] mkr_brake 1
execute unless entity @s[tag=mkr_ai] unless score @s[tag=mkr_in] mkr_slot = temp mkr_slot store result score @s[tag=mkr_in] mkr_slot run data get entity @s[tag=mkr_in] SelectedItemSlot

#link minecart and armor_stand
execute if entity @s[tag=mkr_in] as @e[tag=mkr_cart,limit=1,sort=nearest,type=fox] run tag @s add mkr_c_now
execute if entity @s[tag=mkr_in] as @e[tag=mkr_cart_top,limit=1,sort=nearest,type=minecart] run tag @s add mkr_c_top_now
execute if score @s mkr_speed matches ..100 as @e[tag=mkr_c_now,limit=1,sort=nearest,type=fox] run scoreboard players set @s mkr_motion_x 0
execute if score @s mkr_speed matches ..100 as @e[tag=mkr_c_now,limit=1,sort=nearest,type=fox] run scoreboard players set @s mkr_motion_z 0

#Set entity rotation in storage and scoreboard
data modify storage mkr_rot Rotation set from entity @s[tag=mkr_in] Rotation
execute store result score @s[tag=mkr_in] mkr_rotation run data get entity @s[tag=mkr_in] Rotation[0]
scoreboard players add @s[tag=mkr_in] mkr_rotation 180

#Calculate direction
execute if score @s[tag=mkr_in] mkr_rotation matches 0..90 run scoreboard players set @s[tag=mkr_in] mkr_dir 1
execute if score @s[tag=mkr_in] mkr_rotation matches 90..180 run scoreboard players set @s[tag=mkr_in] mkr_dir 2
execute if score @s[tag=mkr_in] mkr_rotation matches 180..270 run scoreboard players set @s[tag=mkr_in] mkr_dir 3
execute if score @s[tag=mkr_in] mkr_rotation matches 270.. run scoreboard players set @s[tag=mkr_in] mkr_dir 4

execute if score @s[tag=mkr_in] mkr_dir matches 2 run scoreboard players remove @s mkr_rotation 90
execute if score @s[tag=mkr_in] mkr_dir matches 3 run scoreboard players remove @s mkr_rotation 180
execute if score @s[tag=mkr_in] mkr_dir matches 4 run scoreboard players remove @s mkr_rotation 270
scoreboard players operation temp1 mkr_math = @s mkr_rotation
scoreboard players operation temp2 mkr_math = #100 mkr_math
scoreboard players operation temp2 mkr_math /= #90 mkr_math
scoreboard players operation temp2 mkr_math *= temp1 mkr_math
scoreboard players operation temp2 mkr_math /= #10000 mkr_math
scoreboard players operation tempx mkr_math = #speed mkr_math
scoreboard players operation tempz mkr_math = #speed mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 2 run scoreboard players operation tempx mkr_math -= temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 2 run scoreboard players operation tempz mkr_math = temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 4 run scoreboard players operation tempx mkr_math -= temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 4 run scoreboard players operation tempz mkr_math = temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 1 run scoreboard players operation tempz mkr_math -= temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 1 run scoreboard players operation tempx mkr_math = temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 3 run scoreboard players operation tempz mkr_math -= temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 3 run scoreboard players operation tempx mkr_math = temp2 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 1 run scoreboard players operation tempz mkr_math *= #-1 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 3 run scoreboard players operation tempx mkr_math *= #-1 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 4 run scoreboard players operation tempx mkr_math *= #-1 mkr_math
execute if score @s[tag=mkr_in] mkr_dir matches 4 run scoreboard players operation tempz mkr_math *= #-1 mkr_math


execute if entity @s[tag=mkr_wasd] store result score tempx mkr_math run data get entity @s Motion[0] 4800
execute if entity @s[tag=mkr_wasd] store result score tempz mkr_math run data get entity @s Motion[2] 4800


execute if score tempx mkr_math matches 101.. run scoreboard players set tempx mkr_math 100
execute if score tempz mkr_math matches 101.. run scoreboard players set tempz mkr_math 100


scoreboard players reset temp1
scoreboard players reset temp2
scoreboard players operation temp1 mkr_speed = @s mkr_speed
scoreboard players operation temp1 mkr_speed /= #speed mkr_math
scoreboard players operation tempx mkr_math *= temp1 mkr_speed
scoreboard players operation tempz mkr_math *= temp1 mkr_speed
scoreboard players operation temp3 mkr_speed = @s mkr_speed

scoreboard players operation @s mkr_grip = #grip mkr_math

execute if score @s mkr_coin matches 20.. run scoreboard players set @s mkr_grip 45
scoreboard players operation grip mkr_math = @s mkr_grip

scoreboard players operation skin mkr_skin = @s mkr_skin

#recording

scoreboard players set mkr_id mkr_id 0
scoreboard players operation mkr_id mkr_id = @s mkr_id

execute if score mkr_id mkr_id matches 1 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec1 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 1 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec1 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 2 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec2 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 2 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec2 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 3 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec3 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 3 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec3 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 4 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec4 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 4 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec4 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 5 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec5 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 5 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec5 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 6 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec6 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 6 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec6 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 7 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec7 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 7 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec7 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 8 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec8 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 8 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec8 rec_rot append from entity @s Rotation
execute if score mkr_id mkr_id matches 9 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec9 rec_pos append from entity @s Pos
execute if score mkr_id mkr_id matches 9 if score mkr_strecke mkr_strecke matches 1.. run data modify storage rec9 rec_rot append from entity @s Rotation

#Cart function nr 1
execute as @e[tag=mkr_c_now,type=minecraft:fox] at @s run function code:engine/cart_function01

#Cart top function nr 1
execute as @e[tag=mkr_c_top_now,type=minecraft:minecart] at @s run function code:engine/cart_top_function01

#Brake sound
execute if score temp1 mkr_math matches 381.. if score temp4 mkr_math matches 0 run scoreboard players add @s mkr_sound_brake 1
execute if score temp1 mkr_math matches ..380 if score temp4 mkr_math matches 0 run scoreboard players set @s mkr_sound_brake 0
execute if score temp1 mkr_math matches 381.. if score temp4 mkr_math matches 0 if score @s mkr_sound_brake matches 19.. run scoreboard players set @s mkr_sound_brake 0

#Turbo sound
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches 940.. run scoreboard players add @s mkr_sound_turbo 1
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches 940.. run stopsound @s master custom:carturbo2
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches 940.. run tag @s remove turbed
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches 940.. if score @s mkr_sound_turbo matches 349.. run scoreboard players set @s mkr_sound_turbo 0
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches ..939 run scoreboard players set @s mkr_sound_turbo 0 
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches ..920 run stopsound @s master custom:carturbo
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches ..939 if entity @s[tag=!turbed,tag=!mkr_nosounds] run playsound custom:carturbo2 master @s ~ ~ ~ 0.15 1.1
execute if score temp4 mkr_math matches 0 if score @s mkr_speed matches ..939 run tag @s add turbed

#Speeding up
execute if entity @s[tag=mkr_in] if entity @s[tag=mkr_wasd] if score tempx mkr_math matches 0 if score tempz mkr_math matches 0 run scoreboard players remove @s mkr_speed 40
execute if entity @s[tag=mkr_in] if score tempx mkr_math matches 0 if score tempz mkr_math matches 0 if score @s mkr_speed matches ..100 run scoreboard players set @s mkr_speed 101
execute if entity @s[tag=mkr_in] unless score tempx mkr_math matches 0 unless score tempz mkr_math matches 0 unless score @s mkr_brake matches 1.. if score mkr_cooldown mkr_cd matches 0 run scoreboard players add @s mkr_speed 10
execute if entity @s[tag=mkr_in] unless score tempx mkr_math matches 0 unless score tempz mkr_math matches 0 unless score @s mkr_brake matches 1.. if score mkr_cooldown mkr_cd matches 0 if score @s mkr_coin matches 20.. run scoreboard players add @s mkr_speed 12
execute if entity @s[tag=mkr_in] unless score tempx mkr_math matches 0 unless score tempz mkr_math matches 0 unless score @s mkr_brake matches 1.. if score mkr_cooldown mkr_cd matches 0 if score @s mkr_coin matches 15.. run scoreboard players add @s mkr_speed 12
execute if entity @s[tag=mkr_in] if block ~ ~-1 ~ #minecraft:allowed if score @s mkr_speed matches 940.. run scoreboard players remove @s mkr_speed 40
execute if entity @s[tag=mkr_in] unless score tempx mkr_math matches 0 unless score tempz mkr_math matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta unless score @s mkr_brake matches 1.. if score mkr_cooldown mkr_cd matches 0 run scoreboard players add @s mkr_speed 65
execute if entity @s[tag=mkr_in] if block ~ ~-1 ~ magenta_glazed_terracotta if score @s mkr_speed matches 1200.. run scoreboard players set @s mkr_speed 1200
execute if entity @s[tag=mkr_in] if block ~ ~-0.8 ~ pink_glazed_terracotta run tag @e[tag=mkr_c_now] add mkr_fly
execute if entity @s[tag=mkr_in] if block ~ ~-0.8 ~ pink_glazed_terracotta run tag @s add mkr_fly
execute if entity @s[tag=mkr_in] if block ~ ~-0.8 ~ pink_glazed_terracotta run item replace entity @s armor.head with acacia_boat
execute if entity @s[tag=mkr_in] if block ~ ~-1.8 ~ pink_glazed_terracotta run tag @e[tag=mkr_c_now] add mkr_fly
execute if entity @s[tag=mkr_in] if block ~ ~-1.8 ~ pink_glazed_terracotta run tag @s add mkr_fly
execute if entity @s[tag=mkr_in] if block ~ ~-1.8 ~ pink_glazed_terracotta run item replace entity @s armor.head with acacia_boat
execute if entity @s[tag=mkr_in] if block ~ ~-2.8 ~ pink_glazed_terracotta run tag @e[tag=mkr_c_now] add mkr_fly
execute if entity @s[tag=mkr_in] if block ~ ~-2.8 ~ pink_glazed_terracotta run tag @s add mkr_fly
execute if entity @s[tag=mkr_in] if block ~ ~-2.8 ~ pink_glazed_terracotta run item replace entity @s armor.head with acacia_boat
execute if entity @s[tag=mkr_in] if block ~ ~-1 ~ water if score @s mkr_speed matches 820.. run scoreboard players remove @s mkr_speed 20
execute if entity @s[tag=mkr_in] if block ~ ~-1 ~ barrier if score @s mkr_speed matches 820.. run scoreboard players remove @s mkr_speed 20
execute if entity @s[tag=mkr_in] unless block ~ ~-0.8 ~ #minecraft:allowed if score @s mkr_speed matches 370.. if score @s mkr_speed matches ..1000 run scoreboard players remove @s mkr_speed 220
execute if score temp4 mkr_math matches 1 if score @s mkr_ink matches 1..111 run scoreboard players set @s mkr_speed 600
execute unless entity @s[tag=mkr_in] if score mkr_cooldown mkr_cd matches 0 run scoreboard players set @s mkr_speed 90
execute if score @s[tag=mkr_in] mkr_brake matches 1.. if score @s mkr_coin matches 10.. run scoreboard players remove @s[tag=mkr_in,scores={mkr_speed=50..}] mkr_speed 50
execute if score @s[tag=mkr_in] mkr_brake matches 1.. if score @s mkr_coin matches 15.. run scoreboard players remove @s[tag=mkr_in,scores={mkr_speed=60..}] mkr_speed 60
execute if score @s[tag=mkr_in] mkr_brake matches 1.. run scoreboard players remove @s[tag=mkr_in,scores={mkr_speed=120..}] mkr_speed 120
execute if score @s[tag=mkr_in] mkr_brake matches 1.. run scoreboard players remove @s[tag=mkr_in,scores={mkr_speed=40..}] mkr_speed 40
execute if score @s[tag=mkr_in] mkr_brake matches 1.. run scoreboard players remove @s[tag=mkr_in] mkr_brake 1

execute if score @s[tag=mkr_in] mkr_stun matches 1.. run particle minecraft:squid_ink ~ ~ ~ 0.4 0.4 0.4 .1 20
execute if score @s mkr_stun matches 1.. unless entity @s[tag=mkr_fly] run scoreboard players add @s mkr_stat3 1
execute if score @s mkr_stun matches 1 unless entity @s[tag=mkr_fly] run scoreboard players set @s mkr_speed 500
execute if score @s mkr_stun matches 2 unless entity @s[tag=mkr_fly] run scoreboard players set @s mkr_speed 200
execute if score @s mkr_stun matches 3 unless entity @s[tag=mkr_fly] run scoreboard players set @s mkr_speed -200
execute if score @s mkr_stun matches 1.. run scoreboard players set @e[tag=mkr_c_now] mkr_stun 35
execute if score @s mkr_stun matches 1.. if score temp4 mkr_math matches 1 run scoreboard players set @s mkr_cd 0
execute if score @s mkr_stun matches 1.. if score temp4 mkr_math matches 0 run scoreboard players set @s mkr_sound_drive 584
execute if score @s mkr_stun matches 1.. if score temp4 mkr_math matches 0 run stopsound @s master custom:cardriving
execute if score @s mkr_stun matches 1.. unless entity @e[tag=mkr_driver,scores={mkr_item=6},distance=0.1..1.7] run stopsound @a master custom:stun
execute if score @s mkr_stun matches 1.. unless entity @e[tag=mkr_driver,scores={mkr_item=6},distance=0.1..1.7] run playsound custom:stun master @a ~ ~ ~ 0.3 1
execute if score @s mkr_stun matches 1.. run scoreboard players set @s mkr_stun 0

#Hotbar Stuff and visuals

execute if entity @s[tag=mkr_in] unless score @s mkr_trail matches 1.. run particle minecraft:end_rod ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 1 run particle campfire_cosy_smoke ~ ~.1 ~ 0 0 0 .005 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 1 run particle minecraft:smoke ~ ~.1 ~ 0 0 0 .01 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 1 run particle minecraft:small_flame ~ ~.1 ~ 0 0 0 .005 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 1 run particle minecraft:large_smoke ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 2 run particle minecraft:flame ~ ~.1 ~ 0 0 0 .01 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 2 run particle minecraft:small_flame ~ ~.1 ~ 0 0 0 .03 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 3 run particle minecraft:soul ~ ~.1 ~ 0 0 0 .01 3 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 4 run particle minecraft:happy_villager ~ ~.1 ~ 0 0 0 .1 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 4 run particle minecraft:glow ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 4 run particle minecraft:scrape ~ ~.2 ~ 0 0 0 .01 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 5 run particle minecraft:heart ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 6 run particle minecraft:dust_color_transition 40 40 40 4 0 0 0 ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 7 run particle minecraft:nautilus ~ ~.1 ~ 0 0 0 0.2 2 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 8 run particle minecraft:totem_of_undying ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 9 run particle minecraft:wax_on ~ ~.1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=mkr_in] if score @s mkr_trail matches 9 run particle minecraft:wax_off ~.1 ~.1 ~.1 0 0 0 0 1 force @a

scoreboard players operation temp1 mkr_math = @e[tag=mkr_c_now,limit=1] mkr_motion_x
scoreboard players operation temp2 mkr_math = @e[tag=mkr_c_now,limit=1] mkr_motion_z
execute if score temp1 mkr_math matches ..-1 run scoreboard players operation temp1 mkr_math *= #-1 mkr_math
execute if score temp2 mkr_math matches ..-1 run scoreboard players operation temp2 mkr_math *= #-1 mkr_math
scoreboard players operation temp1 mkr_math += temp2 mkr_math

execute if score @s mkr_id matches 1 store result bossbar mkr_pl1 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 2 store result bossbar mkr_pl2 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 3 store result bossbar mkr_pl3 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 4 store result bossbar mkr_pl4 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 5 store result bossbar mkr_pl5 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 6 store result bossbar mkr_pl6 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 7 store result bossbar mkr_pl7 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 8 store result bossbar mkr_pl8 value run scoreboard players get temp1 mkr_math
execute if score @s mkr_id matches 9 store result bossbar mkr_pl9 value run scoreboard players get temp1 mkr_math

#Timer

execute if score @s mkr_strecke matches 1.. if score mkr_cooldown mkr_cd matches 0 run scoreboard players add @s mkr_timer 1
execute if score @s mkr_strecke matches 1.. if score @s mkr_timer matches 2.. run scoreboard players add @s mkr_10sec 1
execute if score @s mkr_strecke matches 1.. if score @s mkr_timer matches 2.. run scoreboard players set @s mkr_timer 0
execute if score @s mkr_strecke matches 1.. if score @s mkr_10sec matches 10.. run scoreboard players add @s mkr_sec 1
execute if score @s mkr_strecke matches 1.. if score @s mkr_10sec matches 10.. run scoreboard players set @s mkr_10sec 0
execute if score @s mkr_strecke matches 1.. if score @s mkr_sec matches 60.. run scoreboard players add @s mkr_min 1
execute if score @s mkr_strecke matches 1.. if score @s mkr_sec matches 60.. run scoreboard players set @s mkr_sec 0

#Remove all temp tags
tag @s remove mkr_in
tag @e[tag=mkr_c_now] remove mkr_c_now
tag @e[tag=mkr_c_top_now] remove mkr_c_top_now