##
 # -5.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0

scoreboard players add .held_minutes bhunt.settings 1
execute if score .held_minutes bhunt.settings matches 60.. run scoreboard players set .held_minutes bhunt.settings 60

function bhunt:setup/page_2