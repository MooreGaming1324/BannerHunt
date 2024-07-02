##
 # team_tick.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

effect give @s glowing 1 0 true

particle minecraft:electric_spark ~ ~1 ~ .5 .5 .5 .1 1

execute if score .debuff_toggle bhunt.settings matches 1 run effect give @s weakness 1 0 true
execute if score .debuff_toggle bhunt.settings matches 1 run effect give @s slowness 1 1 true
execute if score .debuff_toggle bhunt.settings matches 1 run effect give @s mining_fatigue 1 0 true


execute if score .dimension_toggle bhunt.settings matches 0 run function bhunt:dimension