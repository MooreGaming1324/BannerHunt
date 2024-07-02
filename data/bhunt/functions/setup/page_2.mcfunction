##
 # page_2.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t


execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1



## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   Points needed to win:
#   [-5] [-1] (X) [+1] [+5]
#   
#   Minutes flag is held to score:
#   [-5] [-1] (X) [+1] [+5]
#   
#   Point display location:
#   [Sidebar] [Tab] [Below Name]
#   
#   [Start!]    <<<   2   >>>

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}

tellraw @s {"text":" Points needed to win:","color":"gray"}
tellraw @s [""," ",{"text":"[-5] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point-5"},"hoverEvent":{"action":"show_text","contents":["-5 points"]}},{"text":"[-1] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point-1"},"hoverEvent":{"action":"show_text","contents":["-1 point"]}},"(",{"score":{"name":".win_points","objective":"bhunt.settings"},"bold": true,"hoverEvent":{"action":"show_text","contents":["Points needed to win (0 means endless)"]}},")",{"text":" [+1] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point1"},"hoverEvent":{"action":"show_text","contents":["+1 point"]}},{"text":"[+5]","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/point5"},"hoverEvent":{"action":"show_text","contents":["+5 points"]}}]
tellraw @s ""
tellraw @s {"text":" Minutes flag is held to score:","color":"gray"}
tellraw @s [""," ",{"text":"[-5] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/minute-5"},"hoverEvent":{"action":"show_text","contents":["-5 minutes"]}},{"text":"[-1] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/minute-1"},"hoverEvent":{"action":"show_text","contents":["-1 minute"]}},"(",{"score":{"name":".held_minutes","objective":"bhunt.settings"},"bold": true,"hoverEvent":{"action":"show_text","contents":["Minutes holding the flag needed to score a point"]}},")",{"text":" [+1] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/minute1"},"hoverEvent":{"action":"show_text","contents":["+1 minute"]}},{"text":"[+5]","color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/minute5"},"hoverEvent":{"action":"show_text","contents":["+5 minutes"]}}]
tellraw @s ""
tellraw @s {"text":" Point display location:","color":"gray"}
execute if score .point_display bhunt.settings matches 1 run tellraw @s ["",{"text":" [Sidebar] ","color":"aqua","bold": true,"clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_sidebar"},"hoverEvent":{"action":"show_text","contents":["Displays on the side of your screen"]}},{"text":" [Tab] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_tab"},"hoverEvent":{"action":"show_text","contents":["Displays on the tab menu"]}},{"text":" [Below Name]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_belowname"},"hoverEvent":{"action":"show_text","contents":["Displays below your nametag"]}}]
execute if score .point_display bhunt.settings matches 2 run tellraw @s ["",{"text":" [Sidebar] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_sidebar"},"hoverEvent":{"action":"show_text","contents":["Displays on the side of your screen"]}},{"text":" [Tab] ","color":"aqua","bold": true,"clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_tab"},"hoverEvent":{"action":"show_text","contents":["Displays on the tab menu"]}},{"text":" [Below Name]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_belowname"},"hoverEvent":{"action":"show_text","contents":["Displays below your nametag"]}}]
execute if score .point_display bhunt.settings matches 3 run tellraw @s ["",{"text":" [Sidebar] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_sidebar"},"hoverEvent":{"action":"show_text","contents":["Displays on the side of your screen"]}},{"text":" [Tab] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_tab"},"hoverEvent":{"action":"show_text","contents":["Displays on the tab menu"]}},{"text":" [Below Name]","color":"aqua","bold": true,"clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/display_belowname"},"hoverEvent":{"action":"show_text","contents":["Displays below your nametag"]}}]
tellraw @s ""
tellraw @s ["",{"text":" [Start!]","bold": true,"color":"green","clickEvent":{"action":"run_command","value":"/function bannerhunt:start"},"hoverEvent":{"action":"show_text","contents":["Start the minigame"]}},"    ",{"text":"<<<","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/page_1"},"hoverEvent":{"action":"show_text","contents":["Page 1"]}},{"text":"   2   ","color":"white"},{"text":">>>","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/page_3"},"hoverEvent":{"action":"show_text","contents":["Page 3"]}}]

tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"