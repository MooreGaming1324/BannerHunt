##
 # capture_banner.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

data modify storage bhunt:banner Owner set from entity @s UUID
data modify storage bhunt:banner PickupDelay set value 0

execute as @a at @s if score .noise_toggle bhunt.settings matches 1.. run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1


tp @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:white_banner"}}] @s



execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:21,Tags:["bhunt.move"]}