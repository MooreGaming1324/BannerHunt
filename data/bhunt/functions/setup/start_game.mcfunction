##
 # start_game.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t

execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1
scoreboard players set .started bhunt.settings 1

schedule function bhunt:loop_1s 1s replace

tellraw @a ["",{"text":"[!] ","color":"aqua"},{"text":"Bannerhunt has begun!","color":"yellow"}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 .5 1

execute if score .point_display bhunt.settings matches 1 run scoreboard objectives setdisplay sidebar bhunt.score
execute if score .point_display bhunt.settings matches 2 run scoreboard objectives setdisplay list bhunt.score
execute if score .point_display bhunt.settings matches 3 run scoreboard objectives setdisplay belowName bhunt.score