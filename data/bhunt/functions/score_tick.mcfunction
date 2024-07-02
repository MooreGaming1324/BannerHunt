##
 # score_tick.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players add @s bhunt.addup 1
execute if score .double_point_toggle bhunt.settings matches 1 run scoreboard players add @s bhunt.addup 1

scoreboard players set .addup_score bhunt.main 1200
scoreboard players operation .addup_score bhunt.main *= .held_minutes bhunt.settings

execute if score @s bhunt.addup >= .addup_score bhunt.main run function bhunt:score_points