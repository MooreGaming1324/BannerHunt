##
 # -5.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0

scoreboard players add .win_points bhunt.settings 1

execute unless score .setup bhunt.settings matches 1.. run function bhunt:setup/first/step_2
execute if score .setup bhunt.settings matches 1.. run function bhunt:setup/page_2