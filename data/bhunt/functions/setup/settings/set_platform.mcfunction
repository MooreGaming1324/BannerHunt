##
 # set_platform.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0

execute as @e[type=marker,tag=bhunt.banner_summon] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 stone
execute as @e[type=marker,tag=bhunt.banner_summon] at @s run forceload remove ~ ~
kill @e[type=marker,tag=bhunt.banner_summon]
execute align xyz run summon minecraft:marker ~.5 ~ ~.5 {Tags:["bhunt.banner_summon"]}
execute align xyz run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 bedrock
forceload add ~ ~

playsound minecraft:block.amethyst_block.chime ambient @s ~ ~ ~ 500 .8 1
particle minecraft:flash ~ ~1 ~ 0 0 0 1 4
particle minecraft:poof ~ ~ ~ 1 0 1 0 40



execute unless score .setup bhunt.settings matches 1.. run function bhunt:setup/first/step_2
execute if score .setup bhunt.settings matches 1.. run function bhunt:setup/page_1