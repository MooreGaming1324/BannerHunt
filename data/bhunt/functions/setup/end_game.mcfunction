##
 # end_game.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

team remove bhunt.banner
team add bhunt.banner

#del banners
execute as @e[type=marker,tag=bhunt.banner_marker] at @s run function bhunt:new_banner/delete
execute as @a run clear @s white_banner{bhunt_banner:true}


##announce winner 
scoreboard players set .highest bhunt.score 0
execute as @a if score @s bhunt.score > .highest bhunt.score run scoreboard players operation .highest bhunt.score = @s bhunt.score
execute as @a if score @s bhunt.score = .highest bhunt.score run title @a title ["",{"selector":"@s","color":"gold"},{"text":" Wins!","color":"gold"}]

execute as @a run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 3 .8 1
scoreboard players set .started bhunt.settings 0


schedule clear bhunt:loop_1s

scoreboard objectives remove bhunt.score
scoreboard objectives remove bhunt.addup
scoreboard objectives add bhunt.score dummy "Banner Hunt Points"
scoreboard objectives add bhunt.addup dummy

