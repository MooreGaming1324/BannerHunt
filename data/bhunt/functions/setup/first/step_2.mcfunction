##
 # step_2.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t


execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1

## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   Great! now when will the winner be
#   decided? setting it to 0 means
#   it will be endless!
#
#   Points needed to win:
#   [-5] [-1] (X) [+1] [+5]
#   
#   [Continue]

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}

tellraw @s {"text":" Great! now when will the winner be","color":"gray"}
tellraw @s {"text":" decided? setting it to 0 means","color":"gray"}
tellraw @s {"text":" it will be endless!","color":"gray"}
tellraw @s ""
tellraw @s {"text":" Points needed to win:","color":"white"}
tellraw @s [""," ",{"text":"[-5] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point-5"},"hoverEvent":{"action":"show_text","contents":["-5 points"]}},{"text":"[-1] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point-1"},"hoverEvent":{"action":"show_text","contents":["-1 point"]}},"(",{"score":{"name":".win_points","objective":"bhunt.settings"},"bold": true,"hoverEvent":{"action":"show_text","contents":["Points needed to win (0 means endless)"]}},")",{"text":" [+1] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point1"},"hoverEvent":{"action":"show_text","contents":["+1 point"]}},{"text":"[+5]","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point5"},"hoverEvent":{"action":"show_text","contents":["+5 points"]}}]
tellraw @s ""
tellraw @s {"text":" [Continue]","color":"green","clickEvent": {"action":"run_command","value":"/function bhunt:setup/first/step_3"},"hoverEvent":{"action":"show_text","contents":["Continue to next step"]}}
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"