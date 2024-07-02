##
 # raycast.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
scoreboard players remove .limit bhunt.beam 1

#particle dust 1 0 0 1 ~ ~ ~

execute positioned ~ ~ ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~1 ~ ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~-1 ~ ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~1 ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~-1 ~ if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~ ~1 if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place
execute positioned ~ ~ ~-1 if block ~ ~ ~ white_banner align xyz run function bhunt:place_banner/place



execute unless score .limit bhunt.beam matches -1 run execute positioned ^ ^ ^0.5 if score .limit bhunt.beam matches 1.. run function bhunt:place_banner/raycast