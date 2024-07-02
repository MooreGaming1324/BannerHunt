##
 # banner_style_custom.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0


execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:white_banner"}]}] run function bhunt:setup/settings/banner_style_fail
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:white_banner"}]}] run return 0


data modify storage bhunt:banner_style Item.tag.display set from entity @s Inventory[{Slot:-106b}].tag.display
data modify storage bhunt:banner_style Item.tag.BlockEntityTag.Patterns set from entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Patterns
scoreboard players set .banner_style bhunt.settings 1

function bhunt:setup/page_1