##
 # start.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute if score .started bhunt.settings matches 1 run tellraw @s "A game is already in progress!"
execute if score .started bhunt.settings matches 0 run function bhunt:setup/start_game