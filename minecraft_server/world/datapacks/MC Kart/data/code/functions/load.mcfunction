tellraw @a [{"text":"[","color":"#FF9429","bold":true},{"text":"MC KART","color":"#FFC847"},{"text":"]","color":"#FF9429"},{"text":" Reloaded Datapack","color":"#C2C2C2","bold":false,"italic":true}]
scoreboard objectives add mkr_rotation dummy
scoreboard objectives add mkr_dir dummy
scoreboard objectives add mkr_math dummy
scoreboard objectives add mkr_speed dummy
scoreboard objectives add mkr_motion_x dummy
scoreboard objectives add mkr_motion_z dummy
scoreboard objectives add mkr_brake dummy
scoreboard objectives add mkr_slot dummy
scoreboard objectives add mkr_strecke dummy
scoreboard objectives add mkr_point dummy
scoreboard objectives add mkr_round dummy
scoreboard objectives add mkr_cd dummy
scoreboard objectives add mkr_sound_drive dummy
scoreboard objectives add mkr_sound_turbo dummy
scoreboard objectives add mkr_sound_brake dummy
scoreboard objectives add mkr_progress dummy
scoreboard objectives add mkr_platz dummy
scoreboard objectives add mkr_final dummy
scoreboard objectives add mkr_timer dummy
scoreboard objectives add mkr_10sec dummy
scoreboard objectives add mkr_sec dummy
scoreboard objectives add mkr_min dummy
scoreboard objectives add mkr_id dummy
scoreboard objectives add mkr_coin dummy
scoreboard objectives add mkr_item dummy
scoreboard objectives add mkr_item_count dummy
scoreboard objectives add mkr_item_cd dummy
scoreboard objectives add mkr_stun dummy
scoreboard objectives add mkr_grip dummy
scoreboard objectives add mkr_skin dummy
scoreboard objectives add mkr_trail dummy
scoreboard objectives add mkr_ink dummy
scoreboard objectives add mkr_item_use minecraft.used:carrot_on_a_stick
scoreboard objectives add mkr_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add mkr_drop minecraft.dropped:minecraft.ender_eye
scoreboard objectives add money dummy
scoreboard objectives add mkr_hotbar dummy
scoreboard objectives add mkr_play_points dummy
scoreboard objectives add mkr_play_points2 dummy

scoreboard objectives add mkr_stat1 dummy
scoreboard objectives add mkr_stat2 dummy
scoreboard objectives add mkr_stat3 dummy
scoreboard objectives add mkr_stat4 dummy
scoreboard objectives add mkr_stat5 dummy
scoreboard objectives add mkr_stat6 dummy
scoreboard objectives add mkr_stat7 dummy
scoreboard objectives add mkr_stat8 dummy

scoreboard players set #100 mkr_math 1000000
scoreboard players set #10000 mkr_math 10000
scoreboard players set #90 mkr_math 90
scoreboard players set #9 mkr_math 9
scoreboard players set #speed mkr_math 100
scoreboard players set #grip mkr_math 38
scoreboard players set #-1 mkr_math -1

bossbar add mkr_pl1 "Player1 Speed"
bossbar set mkr_pl1 color yellow
bossbar set mkr_pl1 style notched_20
bossbar set mkr_pl1 max 900
bossbar set mkr_pl1 visible true
bossbar add mkr_pl2 "Player2 Speed"
bossbar set mkr_pl2 color yellow
bossbar set mkr_pl2 style notched_20
bossbar set mkr_pl2 max 900
bossbar set mkr_pl2 visible true
bossbar add mkr_pl3 "Player3 Speed"
bossbar set mkr_pl3 color yellow
bossbar set mkr_pl3 style notched_20
bossbar set mkr_pl3 max 900
bossbar set mkr_pl3 visible true
bossbar add mkr_pl4 "Player4 Speed"
bossbar set mkr_pl4 color yellow
bossbar set mkr_pl4 style notched_20
bossbar set mkr_pl4 max 900
bossbar set mkr_pl4 visible true
bossbar add mkr_pl5 "Player5 Speed"
bossbar set mkr_pl5 color yellow
bossbar set mkr_pl5 style notched_20
bossbar set mkr_pl5 max 900
bossbar set mkr_pl5 visible true
bossbar add mkr_pl6 "Player6 Speed"
bossbar set mkr_pl6 color yellow
bossbar set mkr_pl6 style notched_20
bossbar set mkr_pl6 max 900
bossbar set mkr_pl6 visible true
bossbar add mkr_pl7 "Player7 Speed"
bossbar set mkr_pl7 color yellow
bossbar set mkr_pl7 style notched_20
bossbar set mkr_pl7 max 900
bossbar set mkr_pl7 visible true
bossbar add mkr_pl8 "Player8 Speed"
bossbar set mkr_pl8 color yellow
bossbar set mkr_pl8 style notched_20
bossbar set mkr_pl8 max 900
bossbar set mkr_pl8 visible true
bossbar add mkr_pl9 "Player9 Speed"
bossbar set mkr_pl9 color yellow
bossbar set mkr_pl9 style notched_20
bossbar set mkr_pl9 max 900
bossbar set mkr_pl9 visible true

bossbar add mkr_cooldown ["",{"text":"Get in the carts","bold":true,"color":"gold"},{"text":"! ","bold":true,"color":"dark_gray"},{"text":"|","bold":true,"italic":true,"color":"dark_gray"},{"text":" The race will start soon","bold":true,"color":"gold"},{"text":"\u2122!","bold":true,"color":"dark_gray"}]
bossbar set mkr_cooldown color white
bossbar set mkr_cooldown style notched_6
bossbar set mkr_cooldown max 300
bossbar set mkr_cooldown players @a
bossbar set mkr_cooldown visible false

bossbar add no_player {"text":"Currently you are not in the queue","color":"red","italic":true}
bossbar set no_player color red
bossbar set no_player style progress
bossbar set no_player max 1200
bossbar set no_player visible true

bossbar add yes_player {"text":"Currently you are in the queue","color":"green","italic":true}
bossbar set yes_player color green
bossbar set yes_player style progress
bossbar set yes_player max 1200
bossbar set yes_player visible true

team add drivers
team modify drivers seeFriendlyInvisibles true

gamerule fallDamage false
gamerule doMobLoot false

forceload add -428 69
forceload add -435 62