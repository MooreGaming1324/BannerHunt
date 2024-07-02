##
 # speed_reset.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
tellraw @s ["",{"text":"[!] ","color":"aqua"},{"text":"Hey! You moved too fast and dropped the flag!","color":"yellow"}]
execute at @s run playsound entity.villager.no ambient @s ~ ~ ~
function bhunt:new_banner/start