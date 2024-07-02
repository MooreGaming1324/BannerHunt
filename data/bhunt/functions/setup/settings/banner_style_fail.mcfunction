##
 # banner_style_fail.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0

title @s actionbar {"text":"No white banner in offhand!","color":"red"}
execute at @s run playsound entity.villager.no ambient @s ~ ~ ~
function bhunt:setup/page_1