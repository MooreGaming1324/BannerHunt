##
 # page_1.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute store result score .feedback bhunt.main run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function bhunt:setup/return_feedback 1t


execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1

execute as @e[type=marker,tag=bhunt.banner_summon] at @s store result score .summon_x bhunt.main run data get entity @s Pos[0]
execute as @e[type=marker,tag=bhunt.banner_summon] at @s store result score .summon_z bhunt.main run data get entity @s Pos[2]

## ━━━━━━━━┛ ʙᴀɴɴᴇʀ ʜᴜɴᴛ ┗━━━ ━━━━━

#   Flag platform location:
#   (X, Z) - [Set Here]
#   
#   Banner style/appearance:
#   [Default] - [Custom]
#   
#   Enable Banner Beam:
#   [Disabled] - [Enabled]
#   
#          <<<   1   >>>

## ━━━━━━━━┓   ʙʏ ᴍᴏᴏʀᴇ   ┏━━━━━━━━

tellraw @s "\n\n\n\n"
tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u251b \u0299\u1d00\u0274\u0274\u1d07\u0280 \u029c\u1d1c\u0274\u1d1b \u2517\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}

tellraw @s {"text":" Flag platform location:","color":"gray"}
tellraw @s [{"text":" (","color":"white"},{"score":{"name":".summon_x","objective":"bhunt.main"},"color":"white"},{"text":", ","color":"white"},{"score":{"name":".summon_z","objective":"bhunt.main"},"color":"white"},{"text":")","color":"white"},{"text":" - ","color":"dark_gray"},{"text":"[Set Here]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute at @s run function bhunt:setup/settings/set_platform"},"hoverEvent":{"action":"show_text","contents":[{"text":"Sets the flag spawn platform to your location.","color":"white"},"\n","\n",{"text":"\u26a0 ","color":"red"},{"text":"WARNING","bold":true,"color":"red"},{"text":" \u26a0","color":"red"},"\n","\n",{"text":"This will set a 3x3 area below","color":"gray"},"\n",{"text":"you to bedrock!","color":"gray"}]}}]
tellraw @s ""
tellraw @s {"text":" Banner style/appearance:","color":"gray"}
execute if score .banner_style bhunt.settings matches 0 run tellraw @s ["",{"text":" [Default] ","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_style_default"},"hoverEvent":{"action":"show_text","contents":["Sets the banner style to defaults"]}},{"text":"-","color":"dark_gray"},{"text":" [Custom]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_style_custom"},"hoverEvent":{"action":"show_text","contents":["Instructions:","\n","Place a ",{"text":"WHITE ","underlined":true},"banner in your offhand.","\n","This will copy the banner's patterns, title, and lore."]}}]
execute if score .banner_style bhunt.settings matches 1 run tellraw @s ["",{"text":" [Default] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_style_default"},"hoverEvent":{"action":"show_text","contents":["Sets the banner style to defaults"]}},{"text":"-","color":"dark_gray"},{"text":" [Custom]","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_style_custom"},"hoverEvent":{"action":"show_text","contents":["Instructions:","\n","Place a ",{"text":"WHITE ","underlined":true},"banner in your offhand.","\n","This will copy the banner's patterns, title, and lore."]}}]
tellraw @s ""
tellraw @s {"text":" Enable Banner Beam:","color":"gray"}
execute if score .beam_toggle bhunt.settings matches 0 run tellraw @s ["",{"text":" [Disabled] ","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_beam_off"},"hoverEvent":{"action":"show_text","contents":["Disables the beacon beam when the flag is placed."]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_beam_on"},"hoverEvent":{"action":"show_text","contents":["Enables the beacon beam when the flag is placed."]}}]
execute if score .beam_toggle bhunt.settings matches 1 run tellraw @s ["",{"text":" [Disabled] ","color":"white","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_beam_off"},"hoverEvent":{"action":"show_text","contents":["Disables the beacon beam when the flag is placed."]}},{"text":"-","color":"dark_gray"},{"text":" [Enabled]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/settings/banner_beam_on"},"hoverEvent":{"action":"show_text","contents":["Enables the beacon beam when the flag is placed."]}}]
tellraw @s ""
tellraw @s ["",{"text":" [Start!]","bold": true,"color":"green","clickEvent":{"action":"run_command","value":"/function bannerhunt:start"},"hoverEvent":{"action":"show_text","contents":["Start the minigame"]}},"    ",{"text":"<<<","color":"dark_gray","bold": true},{"text":"   1   ","color":"white"},{"text":">>>","bold": true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function bhunt:setup/page_2"},"hoverEvent":{"action":"show_text","contents":["Page 2"]}}]

tellraw @s {"text":"\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2513 \u0020 \u0299\u028f \u1d0d\u1d0f\u1d0f\u0280\u1d07 \u0020 \u250f\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501","bold":true,"color":"gold"}
tellraw @s "\n\n\n"

