##
 # banner_beam_off.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0


scoreboard players set .beam_toggle bhunt.settings 0

function bhunt:setup/page_1
