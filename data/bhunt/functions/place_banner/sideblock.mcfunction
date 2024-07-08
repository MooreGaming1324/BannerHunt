##
 # side_block.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players set .sideblock bhunt.main 1

setblock ~ ~ ~ air

tellraw @s ["",{"text":"[!] ","color":"aqua"},{"text":"Don't put the flag on the side of a block!","color":"yellow"}]
execute at @s run playsound minecraft:block.end_portal_frame.fill ambient @s ~ ~ ~ 1 .5

execute at @s run function bhunt:player_banner/give_banner