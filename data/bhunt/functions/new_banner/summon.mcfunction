##
 # new_banner_summon.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
setblock ~ ~ ~ white_banner
data modify block ~ ~ ~ Patterns set from storage bhunt:banner_style Item.tag.BlockEntityTag.Patterns

fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 bedrock

execute store result score .summon_x bhunt.main run data get entity @s Pos[0]
execute store result score .summon_z bhunt.main run data get entity @s Pos[2]

execute if score .beam_toggle bhunt.settings matches 1.. run summon block_display ~ 64 ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_stained_glass",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,256.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15},Tags:["bhunt.banner_beam"]}],Tags:["bhunt.banner_beam"]}
execute if score .beam_toggle bhunt.settings matches 1.. run summon block_display ~ -64 ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_stained_glass",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,128.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15},Tags:["bhunt.banner_beam"]}],Tags:["bhunt.banner_beam"]}
summon marker ~ ~ ~ {Tags:["bhunt.banner_marker"]}

playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=..20] ~ ~ ~ 10 1 1
particle minecraft:end_rod ~ ~1 ~ 0 0 0 .15 10


tellraw @a ["",{"text":"[!] ","color":"aqua"},{"text":"A new flag has been summoned at ","color":"yellow"},{"score":{"name":".summon_x","objective":"bhunt.main"},"color":"yellow","bold":true},{"text": ", ", "color": "yellow","bold": true},{"score":{"name":".summon_z","objective":"bhunt.main"},"color":"yellow","bold":true}]
