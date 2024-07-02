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

#   Flag bearer debuffs:
#   [Disabled] - [Enabled]
#   
#   Flag bearer doxing:
#   [Disabled] - [Enabled]
#   
#   Flag bearer double points:
#   [Disabled] - [Enabled]
#   
#   [Start!]    <<<   3   >>>

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}

tellraw @s {"text":" Flag bearer debuffs:","color":"gray"}
execute if score .debuff_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/debuff_off"},"hoverEvent":{"action":"show_text","contents":["Disables the flag bearer's negative effects"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/debuff_on"},"hoverEvent":{"action":"show_text","contents":["Gives the flag bearer weakness I, mining fatigue I and slowness II"]}}]
execute if score .debuff_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/debuff_off"},"hoverEvent":{"action":"show_text","contents":["Disables the flag bearer's negative effects"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/debuff_on"},"hoverEvent":{"action":"show_text","contents":["Gives the flag bearer weakness I, mining fatigue I and slowness II"]}}]
tellraw @s ""
tellraw @s {"text":" Flag bearer doxing:","color":"gray"}
execute if score .dox_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dox_off"},"hoverEvent":{"action":"show_text","contents":["Disables flag bearer doxing"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dox_on"},"hoverEvent":{"action":"show_text","contents":["Sends the coordinates of the flag bearer whenever a point is scored, and flag is held"]}}]
execute if score .dox_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dox_off"},"hoverEvent":{"action":"show_text","contents":["Disables flag bearer doxing"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dox_on"},"hoverEvent":{"action":"show_text","contents":["Sends the coordinates of the flag bearer whenever a point is scored, and flag is held"]}}]
tellraw @s ""
tellraw @s {"text":" Flag bearer double points:","color":"gray"}
execute if score .double_point_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/double_point_off"},"hoverEvent":{"action":"show_text","contents":["Disables double points for holding the flag"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/double_point_on"},"hoverEvent":{"action":"show_text","contents":["The flag bearer will score points twice as fast when holding the flag"]}}]
execute if score .double_point_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/double_point_off"},"hoverEvent":{"action":"show_text","contents":["Disables double points for holding the flag"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/double_point_on"},"hoverEvent":{"action":"show_text","contents":["The flag bearer will score points twice as fast when holding the flag"]}}]
tellraw @s ""
tellraw @s ["",{"text":" [Start!]","bold": true,"color":"green","clickEvent":{"action":"run_command","value":"/function bannerhunt:start"},"hoverEvent":{"action":"show_text","contents":["Start the minigame"]}},"    ",{"text":"<<<","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/page_2"},"hoverEvent":{"action":"show_text","contents":["Page 2"]}},{"text":"   3   ","color":"white"},{"text":">>>","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/page_4"},"hoverEvent":{"action":"show_text","contents":["Page 4"]}}]

tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"