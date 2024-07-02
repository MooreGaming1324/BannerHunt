##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute as @a[team=bhunt.banner,tag=!bhunt.placed] at @s run function bhunt:team_tick
execute as @e[type=item,nbt={Item:{tag:{bhunt_banner:true}}}] at @s run function bhunt:team_tick
execute as @a[team=bhunt.banner] at @s run function bhunt:score_tick

##BannerBeam styles
#rotate
execute as @e[type=minecraft:block_display,tag=bhunt.banner_beam] at @s run tp @s ~ ~ ~ ~-2 0
#die
execute as @e[type=marker,tag=bhunt.banner_marker] at @s unless block ~ ~ ~ white_banner run function bhunt:player_banner/break_banner


execute as @a[team=bhunt.banner] if score @s bhunt.leave matches 1.. run function bhunt:resets/leave


##Resets
scoreboard players reset @a bhunt.banner_broke
scoreboard players reset @a bhunt.leave