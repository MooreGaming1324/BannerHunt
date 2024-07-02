##
 # give_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute store result storage bhunt:banner Item.tag.bhunt_id int 1 run scoreboard players get .id bhunt.main
data modify storage bhunt:banner Owner set from entity @s UUID

execute at @s run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:white_banner",Count:1,tag:{bhunt_banner:true,bhunt_id:0,HideFlags:32,BlockEntityTag:{Patterns:[{Color:4,Pattern:"mr"},{Color:4,Pattern:"cre"},{Color:0,Pattern:"mc"},{Color:4,Pattern:"bt"},{Color:0,Pattern:"bs"},{Color:0,Pattern:"hh"}]},display:{Name:'{"text":"Champion\'s Pride","color":"gold","italic":false,"underlined":true}',Lore:['["",{"text":"A legendary flag to display","color":"gray"}]','["",{"text":"your glory. Wear it as you","color":"gray"}]','["",{"text":"charge on to victory!","color":"gray"}]']}}}}
data modify entity @e[type=item,sort=nearest,limit=1] {} merge from storage bhunt:banner
data modify entity @e[type=item,sort=nearest,limit=1] {} merge from storage bhunt:banner_style