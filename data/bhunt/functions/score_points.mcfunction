##
 # score_points.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players reset @s bhunt.addup
scoreboard players add @s bhunt.score 1


execute if score @s bhunt.score >= .win_points bhunt.settings run function bhunt:setup/end_game
execute if score .started bhunt.settings matches 0 run return 0



team modify bhunt.banner prefix ""
tellraw @a ["",{"text":"[!] ","color":"aqua"},{"selector":"@s","color":"yellow"},{"text":" has scored a point!","color":"yellow"}]
team modify bhunt.banner prefix {"bold":true,"text":"[Flag] "}

execute if entity @s[tag=!bhunt.placed] run function bhunt:dox


execute as @a at @s if score .noise_toggle bhunt.settings matches 1.. run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 1 1