##
 # fast_on.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0



scoreboard players set .fast_toggle bhunt.settings 1

function bhunt:setup/page_4
