##
 # break_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
kill @e[type=block_display,sort=nearest,limit=4,tag=bhunt.banner_beam]
kill @s


execute as @a[team=bhunt.banner] run effect clear @s glowing
execute as @a[team=bhunt.banner] run team leave @s
execute as @a[team=bhunt.banner,tag=team_content] run team join content
execute as @a[team=bhunt.banner,tag=team_story] run team join story
tag @a remove bhunt.placed


execute as @a[scores={bhunt.banner_broke=1..}] run function bhunt:player_banner/capture_banner

##Set stats on banner item
execute store result storage bhunt:banner Item.tag.bhunt_id int 1 run scoreboard players get .id bhunt.main
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:white_banner"}},distance=..6] run data modify entity @s {} merge from storage bhunt:banner
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:white_banner"}},distance=..6] run data modify entity @s {} merge from storage bhunt:banner_style