##
 # warn_game_running.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t


execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1


## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   ⚠️ WARNING ⚠️
#   A game is currently ongoing!
#   To edit the settings you must
#   first stop the current game.
#   
#   [End Game]

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s ""

tellraw @s [{"text":" \u26a0 ","color":"red"},{"text":"WARNING","bold":true,"color":"red"},{"text":" \u26a0","color":"red"}]
tellraw @s {"text":" A game is currently ongoing!","color":"gray"}
tellraw @s {"text":" To edit the settings you must","color":"gray"}
tellraw @s {"text":" first stop the current game.","color":"gray"}
tellraw @s ""
tellraw @s {"text":" [End Game and Edit Settings]","color":"red","clickEvent": {"action":"run_command","value":"/function bhunt:setup/end_game_edit_settings"},"hoverEvent":{"action":"show_text","contents":["THIS WILL RESET EVERYONE'S SCORES!!"]}}

tellraw @s ""
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"