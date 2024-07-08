##
 # load.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

scoreboard objectives add bhunt.settings dummy


#      Banner Hunt v1.0
# [Click Here] to get started!
execute unless score .setup bhunt.settings matches 1.. run tellraw @a ["",{"text":" \u0020 \u0020 \u0020 Banner Hunt ","color":"gray"},{"text":"Altered Ed.","color":"green"},{"text":"\n"},{"text":" [Click Here]","color":"white","clickEvent":{"action":"run_command","value":"/function bannerhunt:setup"},"hoverEvent":{"action":"show_text","contents":"/function bannerhunt:setup"}},{"text":" to get started!","color":"gray"}]
#      Banner Hunt v1.0
# [Click Here] to change settings!
execute if score .setup bhunt.settings matches 1.. run tellraw @a ["",{"text":" \u0020 \u0020 \u0020 Banner Hunt ","color":"gray"},{"text":"Altered Ed.","color":"green"},{"text":"\n"},{"text":" [Click Here]","color":"white","clickEvent":{"action":"run_command","value":"/function bannerhunt:settings"},"hoverEvent":{"action":"show_text","contents":"/function bannerhunt:settings"}},{"text":" to change settings!","color":"gray"}]



##Teams
team add bhunt.banner
team modify bhunt.banner color gold
team modify bhunt.banner prefix {"bold":true,"text":"[Flag] "}

##Scoreboards
scoreboard objectives add bhunt.banner_broke minecraft.mined:minecraft.white_banner
scoreboard objectives add bhunt.banner_click dummy
scoreboard objectives add bhunt.banner_place dummy
scoreboard objectives add bhunt.main dummy
scoreboard objectives add bhunt.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add bhunt.score dummy "Banner Hunt Points"
scoreboard objectives add bhunt.addup dummy

team add content
team add story

## Loop functions
execute if score .started bhunt.settings matches 1.. run schedule function bhunt:loop_1s 1s replace
execute if score .started bhunt.settings matches 0 run schedule clear bhunt:loop_1s


data modify storage bhunt:banner_style Item.tag set value {HideFlags:32,bhunt_banner:1b}

