##
 # dox.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

execute store result score .dox_x bhunt.main run data get entity @s Pos[0]
execute store result score .dox_z bhunt.main run data get entity @s Pos[2]

team modify bhunt.banner prefix ""
tellraw @a ["",{"text":"[!] ","color":"aqua"},{"selector":"@s","color":"yellow"},{"text":" is located at ","color":"yellow"},{"score":{"name":".dox_x","objective":"bhunt.main"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":".dox_z","objective":"bhunt.main"},"bold":true,"color":"yellow"},{"text":"!","color":"yellow"}]
team modify bhunt.banner prefix {"bold":true,"text":"[Flag] "}
