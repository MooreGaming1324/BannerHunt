##
 # step_3.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t


execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1

## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   Now we need to decide where to
#   display everyone's current
#   points! here are the options:
#
#   [Sidebar] [Tab] [Below Name]

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s {"text":" Now we need to decide where to","color":"gray"}
tellraw @s {"text":" display everyone's current","color":"gray"}
tellraw @s {"text":" points! here are the options:","color":"gray"}
tellraw @s ""
tellraw @s ["",{"text":" [Sidebar] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_sidebar"},"hoverEvent":{"action":"show_text","contents":["Displays on the side of your screen"]}},{"text":" [Tab] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_tab"},"hoverEvent":{"action":"show_text","contents":["Displays on the tab menu"]}},{"text":" [Below Name]","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_belowname"},"hoverEvent":{"action":"show_text","contents":["Displays below your nametag"]}}]
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"

