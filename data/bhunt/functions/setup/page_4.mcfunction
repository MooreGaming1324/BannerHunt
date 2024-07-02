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

#   Allow flag in dimensions:
#   [Disabled] - [Enabled]
#   
#   Allow "fast-travel":
#   [Disabled] - [Enabled]
#   
#   Announcement noises:
#   [Disabled] - [Enabled]
#    
#   [Start!]    <<<   4   >>>

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}

tellraw @s {"text":" Allow flag in dimensions:","color":"gray"}
execute if score .dimension_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dimension_off"},"hoverEvent":{"action":"show_text","contents":["Disables the flag from entering another dimension (locked to overworld)"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dimension_on"},"hoverEvent":{"action":"show_text","contents":["Allows the flag to enter other dimensions"]}}]
execute if score .dimension_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dimension_off"},"hoverEvent":{"action":"show_text","contents":["Disables the flag from entering another dimension (locked to overworld)"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/dimension_on"},"hoverEvent":{"action":"show_text","contents":["Allows the flag to enter other dimensions"]}}]
tellraw @s ""
tellraw @s {"text":" Allow \"fast-travel\":","color":"gray"}
execute if score .fast_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/fast_off"},"hoverEvent":{"action":"show_text","contents":["Disables the flag bearer from traveling too fast (ender pearl, trident, elytra, tp)"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/fast_on"},"hoverEvent":{"action":"show_text","contents":["Allows the flag bearer to travel fast"]}}]
execute if score .fast_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/fast_off"},"hoverEvent":{"action":"show_text","contents":["Disables the flag bearer from traveling too fast (ender pearl, trident, elytra, tp)"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/fast_on"},"hoverEvent":{"action":"show_text","contents":["Allows the flag bearer to travel fast"]}}]
tellraw @s ""
tellraw @s {"text":" Announcement noises:","color":"gray"}
execute if score .noise_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/noise_off"},"hoverEvent":{"action":"show_text","contents":["Disables ping noises for chat announcements"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/noise_on"},"hoverEvent":{"action":"show_text","contents":["Enables ping noises for chat announcements"]}}]
execute if score .noise_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/noise_off"},"hoverEvent":{"action":"show_text","contents":["Disables ping noises for chat announcements"]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/noise_on"},"hoverEvent":{"action":"show_text","contents":["Enables ping noises for chat announcements"]}}]
tellraw @s ""
tellraw @s ["",{"text":" [Start!]","bold": true,"color":"green","clickEvent":{"action":"run_command","value":"/function bannerhunt:start"},"hoverEvent":{"action":"show_text","contents":["Start the minigame"]}},"    ",{"text":"<<<","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/page_3"},"hoverEvent":{"action":"show_text","contents":["Page 3"]}},{"text":"   4   ","color":"white"},{"text":">>>","color":"dark_gray","bold": true}]

tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"