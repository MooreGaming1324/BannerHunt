##
 # check_obtain.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
advancement revoke @s only bhunt:obtain_banner

##Check if logged out



##check if banner obtained is current banner
execute store result score .checked_id bhunt.main run data get entity @s Inventory[].tag.bhunt_id
execute unless score .checked_id bhunt.main = .id bhunt.main run function bhunt:player_banner/fail_id
execute unless score .checked_id bhunt.main = .id bhunt.main run return 0



execute if entity @s[team=!bhunt.banner] run function bhunt:player_banner/obtain