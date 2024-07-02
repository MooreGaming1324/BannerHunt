##
 # settings.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 0 run function bhunt:setup/page_1
