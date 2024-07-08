##
 # dimension.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute unless predicate bhunt:overworld run tellraw @s ["",{"text":"[!] ","color":"aqua"},{"text":"Hey! The flag cannot leave the overworld!","color":"yellow"}]
execute unless predicate bhunt:overworld run execute at @s run playsound minecraft:block.end_portal_frame.fill ambient @s ~ ~ ~ 1 .5
execute unless predicate bhunt:overworld run function bhunt:new_banner/start