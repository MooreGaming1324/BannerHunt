![Bannerhunt Title](https://cdn.modrinth.com/data/cached_images/9cd38825d8ebafeaa2dbe73b3f4c82ff231b7455.png)

[![Modrinth](https://img.shields.io/modrinth/dt/bannerhunt?color=00AF5C&label=Modrinth&logo=modrinth)](https://modrinth.com/mod/bannerhunt)
***
**Bannerhunt** is a server-side minigame mix between _Capture the Flag_ and _King of the Hill_!
It is a free-for-all designed for ongoing servers (and even new ones) to play in a server event.
<br>

## How to Play
A small platform with a banner and a beacon-like beam will be placed at a location of choice. Your goal is to **keep this flag in your possession** for as long as possible to score points!
![Banner in a village](https://cdn.modrinth.com/data/cached_images/fc12a507bc8b50e6e32074a0c75147d8a0fac972.png)

Once you get the banner, you will start to glow and sparkle until you place it down. If you were the last to touch it, you will still get points! (You can see who has the flag by their name color and prefix in tab) **First to 10 points wins!**
![Holding the Flag](https://cdn.modrinth.com/data/cached_images/acfab6a8ea9a2e8027e78348a83207a4b2a8e58c.png)

The setup is easy and intuitive with a menu system for all the settings!! Nearly everything is customizable to fit your needs! You are even able to change the style of the banner however you would like!

![Chat Settings](https://cdn.modrinth.com/data/cached_images/2bb1bd6cd32909ce30079cd3bd253c5184c009e2.png)

## Rules and Settings

<details>
<summary>Forced Rules</summary>
  
- NO placing the banner in a container of any kind! THIS WILL MAKE A NEW FLAG, AND YOURS WILL BE DELETED
- NO logging out with the banner in your posession! This will also create a new flag!
- If the flag is destroyed in any way shape or form, a new one will be spawned.
- You are unable to place the banner on the side of a block.
</details>

<details>
<summary>Default Settings/Rules</summary>
All of these rules can be changed in settings

- Placed flags have a beacon-like beam
- Points needed to win is 10
- Posessing the flag for 5 minutes gives 1 point
- Holding the flag gives debuffs! (ties into next rule)
- Holding the flag instead of placing it down results in scoring points twice as fast
- Scoring a point while holding the flag announces location in chat
- You are unable to carry the flag to other dimensions
- If you travel too fast while holding the flag (elytra, riptide, fast-travel, etc), you will lose it
</details>

## Setup
With the datapack/mod properly installed on the server, type /reload, which will show the version and setup button! Go through the steps for placing down the spawn location, chosing point goals, and more! 

You also have these commands at your disposal:

```
/function bannerhunt:setup
/function bannerhunt:settings
/function bannerhunt:start
/function bannerhunt:end
/function bannerhunt:uninstall
```

## ⚠ KNOWN ISSUES ⚠
- You cannot click and move the flag in your inventory! This was to avoid a minecraft bug that would say you do not have the flag when you really do.
  - The workaround is to hover over the slot you want it in, and pressing a number key relating to the hotbar slot that it is currently positioned in.
- If your server has teams set, this will override them when someone obtains the flag! You will need to reassign your teams after you are done with the minigame, sorry!
- Occasionally the banner beam will not render! This can be fixed in most cases by increasing Entity Distance in your Video Settings.
- Killing a player that holds the flag will send a notification in chat twice
  - Not really game breaking but a bit annoying! If you think you can solve it the GitHub is linked above, I've already tried.
