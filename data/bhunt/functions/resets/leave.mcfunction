##
 # leave_reset.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
team leave @s

tag @s remove bhunt.placed
clear @s white_banner{bhunt_banner:true}


tellraw @s ["",{"text":"[!] ","color":"aqua"},{"text":"You logged off with the flag, it has been returned to spawn... sorry!","color":"yellow"}]
