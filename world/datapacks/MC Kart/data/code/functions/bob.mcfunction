kill @e[nbt={Item:{id:"minecraft:diamond"}}]

title @s actionbar ["",{"text":"Strecke: "},{"score":{"name":"@s","objective":"mkr_strecke"},"bold":true,"color":"gold"},{"text":" | Point: "},{"score":{"name":"@s","objective":"mkr_point"},"bold":true,"color":"gold"},{"text":" | Near Strecke: "},{"score":{"name":"@e[tag=mkr_point,limit=1,sort=nearest]","objective":"mkr_strecke"},"bold":true,"color":"gold"},{"text":" | Near Point: "},{"score":{"name":"@e[tag=mkr_point,limit=1,sort=nearest]","objective":"mkr_point"},"bold":true,"color":"gold"}]
execute as @e[tag=mkr_point] at @s run particle minecraft:block_marker diamond_block ~ ~ ~ 0 0 0 0 1
execute as @e[tag=mkr_coin] at @s run particle minecraft:block_marker gold_block ~ ~ ~ 0 0 0 0 1
execute as @e[tag=mkr_item] at @s run particle minecraft:block_marker emerald_block ~ ~ ~ 0 0 0 0 1

execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:0b}] run summon marker ~ ~ ~ {Tags:["mkr_point"]}
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:1b}] run function code:set_scores
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:2b}] run kill @e[tag=mkr_point,limit=1,sort=nearest]
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:3b}] run tp @e[tag=mkr_point,limit=1,sort=nearest] @s
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:5b}] run scoreboard players remove @s mkr_point 1
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:6b}] run scoreboard players add @s mkr_point 1
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:7b}] run scoreboard players remove @s mkr_strecke 1
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:8b}] run scoreboard players add @s mkr_strecke 1
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:9b}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["mkr_ecke"]}
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:9b}] run scoreboard players operation @e[tag=mkr_ecke,limit=1,sort=nearest] mkr_strecke = @s mkr_strecke
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:10b}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["mkr_strecke"]}
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:10b}] run scoreboard players operation @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_strecke = @s mkr_strecke
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:10b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_sec 999
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:10b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_min 999
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:12b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_dir 1
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:13b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_dir 2
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:14b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_dir 3
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:15b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_dir 4
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:21b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_round 1
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:22b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_round 2
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:23b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_round 3
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:24b}] run scoreboard players set @e[tag=mkr_strecke,limit=1,sort=nearest] mkr_round 4
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:27b}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["mkr_coin"]}
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:27b}] run scoreboard players operation @e[tag=mkr_coin,limit=1,sort=nearest] mkr_strecke = @s mkr_strecke
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:28b}] align xyz run kill @e[tag=mkr_coin,limit=1,sort=nearest]

execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:29b}] align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["mkr_item"]}
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:29b}] run scoreboard players operation @e[tag=mkr_item,limit=1,sort=nearest] mkr_strecke = @s mkr_strecke
execute if data entity @s Inventory[{id:"minecraft:diamond"}] unless data entity @s Inventory[{id:"minecraft:diamond",Slot:30b}] align xyz run kill @e[tag=mkr_item,limit=1,sort=nearest]

item replace entity @s hotbar.0 with diamond{display:{Name:'{"text":"Spawn Point"}'}} 1
item replace entity @s hotbar.1 with diamond{display:{Name:'{"text":"Set Scores for Point"}'}} 1
item replace entity @s hotbar.2 with diamond{display:{Name:'{"text":"Kill Point"}'}} 1
item replace entity @s hotbar.3 with diamond{display:{Name:'{"text":"TP Point"}'}} 1
item replace entity @s hotbar.5 with diamond{display:{Name:'{"text":"-1 Point"}'}} 1
item replace entity @s hotbar.6 with diamond{display:{Name:'{"text":"+1 Point"}'}} 1
item replace entity @s hotbar.7 with diamond{display:{Name:'{"text":"-1 Strecke"}'}} 1
item replace entity @s hotbar.8 with diamond{display:{Name:'{"text":"+1 Strecke"}'}} 1
item replace entity @s inventory.0 with diamond{display:{Name:'{"text":"Spawn Ecke"}'}} 1
item replace entity @s inventory.1 with diamond{display:{Name:'{"text":"Spawn Strecke"}'}} 1
item replace entity @s inventory.3 with diamond{display:{Name:'{"text":"Set Dir 1 (pos x)"}'}} 1
item replace entity @s inventory.4 with diamond{display:{Name:'{"text":"Set Dir 2 (pos z)"}'}} 1
item replace entity @s inventory.5 with diamond{display:{Name:'{"text":"Set Dir 3 (neg x)"}'}} 1
item replace entity @s inventory.6 with diamond{display:{Name:'{"text":"Set Dir 4 (neg z)"}'}} 1

item replace entity @s inventory.12 with diamond{display:{Name:'{"text":"Set Round 1"}'}} 1
item replace entity @s inventory.13 with diamond{display:{Name:'{"text":"Set Round 2"}'}} 1
item replace entity @s inventory.14 with diamond{display:{Name:'{"text":"Set Round 3"}'}} 1
item replace entity @s inventory.15 with diamond{display:{Name:'{"text":"Set Round 4"}'}} 1

item replace entity @s inventory.18 with diamond{display:{Name:'{"text":"Spawn Coin"}'}} 1
item replace entity @s inventory.19 with diamond{display:{Name:'{"text":"Kill Coin"}'}} 1
item replace entity @s inventory.20 with diamond{display:{Name:'{"text":"Spawn Itembox"}'}} 1
item replace entity @s inventory.21 with diamond{display:{Name:'{"text":"Kill Itembox"}'}} 1