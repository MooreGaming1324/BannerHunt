##
 # -5.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0

scoreboard players remove .held_minutes bhunt.settings 5
execute if score .held_minutes bhunt.settings matches ..0 run scoreboard players set .held_minutes bhunt.settings 1

function bhunt:setup/page_2