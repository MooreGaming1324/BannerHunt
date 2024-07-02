##
 # lose_check.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
advancement revoke @s only bhunt:lose_banner

##check if broke banner
execute if score @s bhunt.banner_broke matches 1.. run return 0



##check if clicked in inv
execute store result score @s bhunt.banner_click run clear @s white_banner{bhunt_banner:true} 0
execute if score @s bhunt.banner_click matches 1.. run function bhunt:player_banner/click_reset
execute if score @s bhunt.banner_click matches 1.. run return 0


##Check if placed
scoreboard players set @s bhunt.banner_place 0
execute if entity @s[advancements={bhunt:place_banner=true}] run function bhunt:place_banner/check
execute unless score @s bhunt.banner_place matches 0 run return 0

function bhunt:player_banner/lose