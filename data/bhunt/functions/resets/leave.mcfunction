##
 # leave_reset.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
team leave @s
execute as @s[tag=team_content] run team join content
execute as @s[tag=team_story] run team join story
tag @s remove bhunt.placed
clear @s white_banner{bhunt_banner:true}


tellraw @s ["",{"text":"[!] ","color":"aqua"},{"text":"You logged off with the flag, it has been returned to spawn... sorry!","color":"yellow"}]
