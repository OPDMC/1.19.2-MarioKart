team empty drivers
kill @e[tag=mkr_ai]
kill @e[tag=mkr_cart]
tp @e[tag=mkr_cart] ~ ~-400 ~
kill @e[tag=mkr_cart_top]
kill @e[tag=mkr_rec]
kill @e[tag=mkr_rec_name]
tag @a[tag=mkr_driver] remove mkr_lobby
tag @a[tag=mkr_driver] remove mkr_spectator
tag @a[tag=mkr_driver] remove mkr_player
gamemode adventure @a[tag=mkr_driver]
clear @a[tag=mkr_driver]
execute as @a run function code:engine/reset_scores
scoreboard players set @s mkr_hotbar 0
scoreboard players set @e[tag=mkr_driver] mkr_sec 0
scoreboard players set @e[tag=mkr_driver] mkr_min 0
scoreboard players set @e[tag=mkr_driver] mkr_timer 0
scoreboard players set @e[tag=mkr_driver] mkr_coin 0
scoreboard players set @e[tag=mkr_driver] mkr_item 0
scoreboard players set @e[tag=mkr_driver] mkr_item_cd 0
scoreboard players set @e[tag=mkr_driver] mkr_item_count 0
scoreboard players set @e[tag=mkr_driver] mkr_item_use 0
scoreboard players set @e[tag=mkr_driver] mkr_10sec 0
data remove storage rec1 rec_pos
data remove storage rec1 rec_rot
data remove storage rec2 rec_pos
data remove storage rec2 rec_rot
data remove storage rec3 rec_pos
data remove storage rec3 rec_rot
data remove storage rec4 rec_pos
data remove storage rec4 rec_rot
data remove storage rec5 rec_pos
data remove storage rec5 rec_rot
data remove storage rec6 rec_pos
data remove storage rec6 rec_rot
data remove storage rec7 rec_pos
data remove storage rec7 rec_rot
data remove storage rec8 rec_pos
data remove storage rec8 rec_rot
data remove storage rec9 rec_pos
data remove storage rec9 rec_rot
data remove storage platz1 String
data remove storage platz1 Min
data remove storage platz1 Sec
data remove storage platz1 10Sec
data remove storage platz2 String
data remove storage platz2 Min
data remove storage platz2 Sec
data remove storage platz2 10Sec
data remove storage platz3 String
data remove storage platz3 Min
data remove storage platz3 Sec
data remove storage platz3 10Sec
data remove storage platz4 String
data remove storage platz4 Min
data remove storage platz4 Sec
data remove storage platz4 10Sec
data remove storage platz5 String
data remove storage platz5 Min
data remove storage platz5 Sec
data remove storage platz5 10Sec
data remove storage platz6 String
data remove storage platz6 Min
data remove storage platz6 Sec
data remove storage platz6 10Sec
data remove storage platz7 String
data remove storage platz7 Min
data remove storage platz7 Sec
data remove storage platz7 10Sec
data remove storage platz8 String
data remove storage platz8 Min
data remove storage platz8 Sec
data remove storage platz8 10Sec
data remove storage platz9 String
data remove storage platz9 Min
data remove storage platz9 Sec
data remove storage platz9 10Sec
execute as @a[tag=mkr_driver] at @s run scoreboard players operation @s mkr_strecke = mkr_strecke mkr_strecke
execute as @a[scores={mkr_strecke=1..}] at @s run scoreboard players set @s mkr_point 1
execute as @a[scores={mkr_strecke=1..}] at @s run scoreboard players set @s mkr_round 1
scoreboard players set mkr_final mkr_final 0
scoreboard players set mkr_cooldown mkr_cd 660
title @a[tag=mkr_driver] times 0 30 20
title @a[tag=mkr_driver] title "\uE000"
scoreboard players set mkr_end mkr_cd 0
execute as @e[tag=mkr_ecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run forceload add ~ ~ ~287 ~100
execute as @e[tag=mkr_ecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run forceload add ~ ~101 ~287 ~200
execute as @e[tag=mkr_ecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run forceload add ~ ~201 ~287 ~287
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute as @e[tag=mkr_coin] at @s run kill @e[type=item,distance=..0.3]
execute as @e[tag=mkr_coin] at @s run scoreboard players set @s mkr_cd 2

execute as @e[tag=mkr_item] at @s run kill @e[type=end_crystal,distance=..2.5]
execute as @e[tag=mkr_item] at @s run scoreboard players set @s mkr_cd 2

bossbar set mkr_cooldown players @a
bossbar set mkr_cooldown visible true
execute as @e[tag=mkr_strecke] at @s if score @s mkr_strecke = mkr_strecke mkr_strecke run tag @s add now
data modify storage bot_rec rec_pos set from entity @e[tag=now,limit=1] data.rec_pos
data modify storage bot_rec rec_rot set from entity @e[tag=now,limit=1] data.rec_rot
scoreboard players set players mkr_math 0
execute as @a[tag=mkr_driver] run scoreboard players add players mkr_math 1

scoreboard players set mkr_point mkr_point 0
execute as @e[tag=mkr_point] if score @s mkr_strecke = mkr_strecke mkr_strecke run scoreboard players add mkr_point mkr_point 1

execute as @e[tag=now] at @s if score @s mkr_dir matches 1 run spreadplayers ~5 ~ .5 2 true @a[tag=mkr_driver]
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 run spreadplayers ~ ~5 .5 2 true @a[tag=mkr_driver]
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 run spreadplayers ~-5 ~ .5 2 true @a[tag=mkr_driver]
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 run spreadplayers ~ ~-5 .5 2 true @a[tag=mkr_driver]

execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..8 positioned ~2 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..7 positioned ~2 ~ ~ run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..6 positioned ~2 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..5 positioned ~5 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..4 positioned ~5 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..3 positioned ~8 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..2 positioned ~8 ~ ~ run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches ..1 positioned ~8 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 0 positioned ~5 ~ ~ run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 1.. positioned ~5 ~ ~ run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 2.. positioned ~8 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 3.. positioned ~8 ~ ~ run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 4.. positioned ~8 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 5.. positioned ~5 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 6.. positioned ~5 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 7.. positioned ~2 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 8.. positioned ~2 ~ ~ run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 1 if score players mkr_math matches 9.. positioned ~2 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..8 positioned ~-2 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..7 positioned ~ ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..6 positioned ~2 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..5 positioned ~-2 ~ ~5 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..4 positioned ~2 ~ ~5 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..3 positioned ~-2 ~ ~8 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..2 positioned ~ ~ ~8 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches ..1 positioned ~2 ~ ~8 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 0 positioned ~ ~ ~5 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 1.. positioned ~ ~ ~5 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 2.. positioned ~2 ~ ~8 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 3.. positioned ~ ~ ~8 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 4.. positioned ~-2 ~ ~8 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 5.. positioned ~2 ~ ~5 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 6.. positioned ~-2 ~ ~5 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 7.. positioned ~2 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 8.. positioned ~ ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 2 if score players mkr_math matches 9.. positioned ~-2 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..8 positioned ~-2 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..7 positioned ~-2 ~ ~ run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..6 positioned ~-2 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..5 positioned ~-5 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..4 positioned ~-5 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..3 positioned ~-8 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..2 positioned ~-8 ~ ~ run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches ..1 positioned ~-8 ~ ~2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 0 positioned ~-5 ~ ~ run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 1.. positioned ~-5 ~ ~ run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 2.. positioned ~-8 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 3.. positioned ~-8 ~ ~ run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 4.. positioned ~-8 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 5.. positioned ~-5 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 6.. positioned ~-5 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 7.. positioned ~-2 ~ ~2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 8.. positioned ~-2 ~ ~ run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 3 if score players mkr_math matches 9.. positioned ~-2 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..8 positioned ~2 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..7 positioned ~ ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..6 positioned ~-2 ~ ~-2 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..5 positioned ~2 ~ ~-5 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..4 positioned ~-2 ~ ~-5 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..3 positioned ~2 ~ ~-8 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..2 positioned ~ ~ ~-8 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches ..1 positioned ~-2 ~ ~-8 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 0 positioned ~ ~ ~-5 run function code:summon_bot
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 1.. positioned ~ ~ ~-5 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 2.. positioned ~-2 ~ ~-8 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 3.. positioned ~ ~ ~-8 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 4.. positioned ~2 ~ ~-8 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 5.. positioned ~-2 ~ ~-5 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 6.. positioned ~2 ~ ~-5 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 7.. positioned ~-2 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 8.. positioned ~ ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[tag=now] at @s if score @s mkr_dir matches 4 if score players mkr_math matches 9.. positioned ~2 ~ ~-2 run summon fox ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:0b,Tags:["mkr_cart"],Passengers:[{id:"minecraft:minecart",Silent:1b,Invulnerable:1b,Tags:["mkr_cart_top"]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}

scoreboard players set @e[tag=mkr_driver] mkr_item 0
scoreboard players operation @e[tag=mkr_driver] mkr_grip = #grip mkr_math

bossbar set minecraft:mkr_pl1 players
bossbar set minecraft:mkr_pl2 players
bossbar set minecraft:mkr_pl3 players
bossbar set minecraft:mkr_pl4 players
bossbar set minecraft:mkr_pl5 players
bossbar set minecraft:mkr_pl6 players
bossbar set minecraft:mkr_pl7 players
bossbar set minecraft:mkr_pl8 players
bossbar set minecraft:mkr_pl9 players
scoreboard players set mkr_id mkr_id 0
execute as @e[tag=mkr_driver] run function code:add_id
bossbar set mkr_pl1 name ["",{"selector":"@a[scores={mkr_id=1}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl2 name ["",{"selector":"@a[scores={mkr_id=2}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl3 name ["",{"selector":"@a[scores={mkr_id=3}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl4 name ["",{"selector":"@a[scores={mkr_id=4}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl5 name ["",{"selector":"@a[scores={mkr_id=5}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl6 name ["",{"selector":"@a[scores={mkr_id=6}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl7 name ["",{"selector":"@a[scores={mkr_id=7}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl8 name ["",{"selector":"@a[scores={mkr_id=8}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]
bossbar set mkr_pl9 name ["",{"selector":"@a[scores={mkr_id=9}]","bold":true,"color":"gold"},{"text":"'s ","bold":true,"color":"gold"},{"text":"Speed","italic":true,"color":"#FFA817"},{"text":":","bold":true,"color":"gray"}]

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["mkr_rec_name"],Marker:1b,Invisible:1b}
data modify entity @e[tag=mkr_rec_name,limit=1] CustomName set from entity @e[tag=now,limit=1] data.Best
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mkr_rec"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
tag @e remove now