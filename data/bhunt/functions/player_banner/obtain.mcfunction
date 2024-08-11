##
 # obtain_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

tellraw @a ["",{"text":"[!] ","color":"aqua"},{"selector":"@s","color":"yellow"},{"text":" has obtained the flag!","color":"yellow"}]
execute as @a at @s if score .noise_toggle bhunt.settings matches 1.. run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1


team join bhunt.banner

execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:21,Tags:["bhunt.move"]}