##
 # sidebar.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0


scoreboard objectives setdisplay sidebar bhunt.score
execute if score .point_display bhunt.settings matches 2 run scoreboard objectives setdisplay list
execute if score .point_display bhunt.settings matches 3 run scoreboard objectives setdisplay belowName

scoreboard players set .point_display bhunt.settings 1

execute if score .setup bhunt.settings matches 1.. run function bhunt:setup/page_2
execute unless score .setup bhunt.settings matches 1.. run function bhunt:setup/first/step_final