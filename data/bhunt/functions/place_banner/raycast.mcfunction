##
 # raycast.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players remove .limit bhunt.beam 1

#particle dust 1 0 0 1 ~ ~ ~

scoreboard players set .sideblock bhunt.main 0
execute positioned ~ ~ ~ if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute positioned ~1 ~ ~ if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute positioned ~-1 ~ ~ if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute positioned ~ ~1 ~ if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute positioned ~ ~-1 ~ if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute positioned ~ ~ ~1 if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute positioned ~ ~ ~-1 if block ~ ~ ~ white_wall_banner align xyz run function bhunt:place_banner/sideblock
execute if score .sideblock bhunt.main matches 1 run return 0

execute positioned ~ ~ ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~1 ~ ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~-1 ~ ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~1 ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~-1 ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~ ~1 if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~ ~-1 if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place



execute unless score .limit bhunt.beam matches -1 run execute positioned ^ ^ ^0.5 if score .limit bhunt.beam matches 1.. run function bhunt:place_banner/raycast