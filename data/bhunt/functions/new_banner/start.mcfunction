##
 # new_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##increase id
scoreboard players add .id bhunt.main 1


##remove banners 
execute as @e[type=marker,tag=bhunt.banner_marker] at @s run function bhunt:new_banner/delete
execute as @a[team=bhunt.banner] run clear @s white_banner{bhunt_banner:true}


##summon new now
execute as @e[type=marker,tag=bhunt.banner_summon] at @s run function bhunt:new_banner/summon

