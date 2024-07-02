##
 # loop_1s.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute as @a[team=bhunt.banner] run scoreboard players add .team bhunt.main 1
execute as @e[type=item,nbt={Item:{tag:{bhunt_banner:1b}}}] run scoreboard players add .team bhunt.main 1
execute as @e[type=marker,tag=bhunt.banner_summon] at @s unless score .team bhunt.main matches 1.. unless block ~ ~ ~ white_banner run function bhunt:new_banner/start
scoreboard players reset .team bhunt.main
schedule function bhunt:loop_1s 1s replace


execute if score .fast_toggle bhunt.settings matches 0 as @a[team=bhunt.banner,tag=!bhunt.placed] at @s run function bhunt:fast