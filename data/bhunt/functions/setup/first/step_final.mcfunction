##
 # step_final.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t

execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1

##Default Settings
scoreboard players set .setup bhunt.settings 1
# 0 = in setup phase, 1 = completed setup phase
scoreboard players set .banner_style bhunt.settings 0
# 0 = use default, 1 = use custom
scoreboard players set .beam_toggle bhunt.settings 1
# 1 = use banner beam, 0 = disable banner beam



## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   You are now all set up! You can
#   either start now or change some
#   optional settings:
#
#   [Start!] [Settings]

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s {"text":" You are now all set up! You can","color":"gray"}
tellraw @s {"text":" either start now or change some","color":"gray"}
tellraw @s {"text":" optional settings:","color":"gray"}
tellraw @s ""
tellraw @s ["",{"text":"         [Start!]  ","color":"green","clickEvent":{"action":"run_command","value":"/function bannerhunt:start"},"hoverEvent":{"action":"show_text","contents":["Start the minigame"]}},{"text":"    [Settings]","color":"white","clickEvent":{"action":"run_command","value":"/function bannerhunt:settings"},"hoverEvent":{"action":"show_text","contents":["Change some additional settings"]}}]
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"

