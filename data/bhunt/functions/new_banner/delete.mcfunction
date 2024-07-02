##
 # delete_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
kill @e[type=block_display,sort=nearest,limit=4,tag=bhunt.banner_beam]
setblock ~ ~ ~ air
kill @s

tag @a remove bhunt.placed
