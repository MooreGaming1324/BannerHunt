##
 # step_1.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t


execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1
scoreboard players set .win_points bhunt.settings 10
scoreboard players set .setup bhunt.settings 0
scoreboard players set .banner_style bhunt.settings 0
scoreboard players set .beam_toggle bhunt.settings 1
scoreboard players set .held_minutes bhunt.settings 5
scoreboard players set .debuff_toggle bhunt.settings 1
scoreboard players set .dox_toggle bhunt.settings 1
scoreboard players set .double_point_toggle bhunt.settings 1
scoreboard players set .dimension_toggle bhunt.settings 0
scoreboard players set .fast_toggle bhunt.settings 0
scoreboard players set .noise_toggle bhunt.settings 1
scoreboard players set .dimension_toggle bhunt.settings 0
scoreboard players set .started bhunt.settings 0

data modify storage bhunt:banner_style Item.tag.display set value {Lore:['["",{"text":"A legendary flag to display","color":"gray"}]','["",{"text":"your glory. Wear it as you","color":"gray"}]','["",{"text":"charge on to victory!","color":"gray"}]'], Name:'{"italic":false,"underlined":true,"color":"gold","text":"Champion\'s Pride"}'}
data modify storage bhunt:banner_style Item.tag.BlockEntityTag.Patterns set value [{Pattern:"mr",Color:4},{Pattern:"cre",Color:4},{Pattern:"mc",Color:0},{Pattern:"bt",Color:4},{Pattern:"bs",Color:0},{Pattern:"hh",Color:0}]


## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   Welcome to Banner Hunt! before we
#   begin lets set things up.
#
#   [Click Here] to set the flag spawn
#   platform to your location!
#
#   ⚠️ WARNING ⚠️
#   This will set a 3x3 area below
#   you to bedrock!

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}

tellraw @s {"text":" Welcome to Banner Hunt! before we","color":"gray"}
tellraw @s {"text":" begin lets set things up.","color":"gray"}
tellraw @s ""
tellraw @s [{"text":" [Click Here]","color":"aqua","clickEvent": {"action":"run_command","value":"/execute at @s run function bhunt:setup/settings/set_platform"},"hoverEvent":{"action":"show_text","contents":["Spawn flag platform"]}},{"text":" to set the flag spawn","color":"gray"}]
tellraw @s {"text":" platform to your location!","color":"gray"}
tellraw @s ""
tellraw @s [{"text":" \u26a0 ","color":"red"},{"text":"WARNING","bold":true,"color":"red"},{"text":" \u26a0","color":"red"}]
tellraw @s {"text":" This will set a 3x3 area below","color":"gray"}
tellraw @s {"text":" you to bedrock!","color":"gray"}

tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"