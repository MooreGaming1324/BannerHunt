##
 # check.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
advancement revoke @s only bhunt:place_banner
scoreboard players set @s bhunt.banner_place 1


scoreboard objectives add bhunt.beam dummy
scoreboard players set .limit bhunt.beam 20
execute at @s anchored eyes positioned ^ ^ ^.1 run function bhunt:place_banner/raycast