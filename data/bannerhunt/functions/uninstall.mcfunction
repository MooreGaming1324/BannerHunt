##
 # uninstall.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##remove banners 
execute as @e[type=marker,tag=bhunt.banner_marker] at @s run function bhunt:new_banner/delete
execute as @a[team=bhunt.banner] run clear @s white_banner{bhunt_banner:true}

scoreboard objectives remove bhunt.addup
scoreboard objectives remove bhunt.banner_broke
scoreboard objectives remove bhunt.banner_click
scoreboard objectives remove bhunt.banner_place
scoreboard objectives remove bhunt.beam
scoreboard objectives remove bhunt.leave
scoreboard objectives remove bhunt.main
scoreboard objectives remove bhunt.score
scoreboard objectives remove bhunt.settings

team remove bhunt.banner

schedule clear bhunt:loop_1s