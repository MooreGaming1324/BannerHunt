##
 # setup.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0

function bhunt:setup/first/step_1