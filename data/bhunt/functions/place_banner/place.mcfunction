##
 # place.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

scoreboard players set .limit bhunt.beam -1

execute if score .beam_toggle bhunt.settings matches 1.. run summon block_display ~.5 64 ~.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_stained_glass",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,256.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15},Tags:["bhunt.banner_beam"]}],Tags:["bhunt.banner_beam"]}
execute if score .beam_toggle bhunt.settings matches 1.. run summon block_display ~.5 -64 ~.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_stained_glass",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,128.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15},Tags:["bhunt.banner_beam"]}],Tags:["bhunt.banner_beam"]}
summon marker ~.5 ~ ~.5 {Tags:["bhunt.banner_marker"]}

playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=..20] ~.5 ~ ~.5 10 1 1
particle minecraft:end_rod ~.5 ~1 ~.5 0 0 0 .15 10

tag @s add bhunt.placed

team modify bhunt.banner prefix {"text":""}
tellraw @a ["",{"text":"[!] ","color":"aqua"},{"selector":"@s","color":"yellow"},{"text":" placed down the flag!","color":"yellow"}]
team modify bhunt.banner prefix {"bold":true,"text":"[Flag] "}
execute as @a[team=!bhunt.banner] at @s if score .noise_toggle bhunt.settings matches 1.. run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1