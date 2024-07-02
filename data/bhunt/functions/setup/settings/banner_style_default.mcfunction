##
 # banner_style_default.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute if score .started bhunt.settings matches 1 run function bhunt:setup/warn_game_running
execute if score .started bhunt.settings matches 1 run return 0




data modify storage bhunt:banner_style Item.tag.display set value {Lore:['["",{"text":"A legendary flag to display","color":"gray"}]','["",{"text":"your glory. Wear it as you","color":"gray"}]','["",{"text":"charge on to victory!","color":"gray"}]'], Name:'{"italic":false,"underlined":true,"color":"gold","text":"Champion\'s Pride"}'}
data modify storage bhunt:banner_style Item.tag.BlockEntityTag.Patterns set value [{Pattern:"mr",Color:4},{Pattern:"cre",Color:4},{Pattern:"mc",Color:0},{Pattern:"bt",Color:4},{Pattern:"bs",Color:0},{Pattern:"hh",Color:0}]

scoreboard players set .banner_style bhunt.settings 0

function bhunt:setup/page_1