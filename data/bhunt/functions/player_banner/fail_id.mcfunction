##
 # fail_id.mcfunction
 #
 #
 # Created by MooreGaming1324.
##
clear @s white_banner{bhunt_banner:true} 1
tellraw @s ["",{"text":"[!]","color":"aqua"},{"text":" Hey! That flag is a fake!","color":"yellow"}]
execute at @s run playsound entity.villager.no ambient @s ~ ~ ~

execute if data entity @s Inventory[].tag.bhunt_id store result score .checked_id bhunt.main run data get entity @s Inventory[].tag.bhunt_id
execute if data entity @s Inventory[].tag.bhunt_id unless score .checked_id bhunt.main = .id bhunt.main run function bhunt:player_banner/fail_id