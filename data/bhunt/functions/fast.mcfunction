##
 # fast.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute unless entity @e[type=area_effect_cloud,tag=bhunt.move,distance=..20] run function bhunt:resets/speed
summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["bhunt.move"]}