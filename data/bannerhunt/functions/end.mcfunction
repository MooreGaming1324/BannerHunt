##
 # end.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/end_game
execute if score .started bhunt.settings matches 0 run tellraw @s "There is no game in progress!"