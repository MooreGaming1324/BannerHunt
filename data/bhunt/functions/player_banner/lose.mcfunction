##
 # lose_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

effect clear @s glowing
team leave @s
execute if entity @s[tag=team_content] run team join content
execute if entity @s[tag=team_story] run team join story
tag @s remove bhunt.placed

tellraw @a ["",{"text":"[!] ","color":"aqua"},{"selector":"@s","color":"yellow"},{"text":" has lost the flag!","color":"yellow"}]
execute as @a at @s if score .noise_toggle bhunt.settings matches 1.. run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 .8 1

team join bhunt.banner @e[type=item,nbt={Item:{tag:{bhunt_banner:true}}}]
data modify entity @e[type=item,nbt={Item:{tag:{bhunt_banner:true}}},sort=nearest,limit=1] Glowing set value true
