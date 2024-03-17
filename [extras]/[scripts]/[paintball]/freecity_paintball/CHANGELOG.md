Version 1.0.1-release:

[UPDATES] - Added support for QBCore - Added Ped Arms/Textures

[BUGFIXES] - Fixed double tp when game ends for players that are already out of the match

Please download the latest version (1.0.1-release) from your keymaster.

Version 1.0.2-release:

[GLOBAL] - Improved resmon while in game from 0.02 to 0.00 - Added Tshirt and shoes variations on shared.lua - When the lobby leader leaves the game and the game hasn't started, it auto selects a new lobby leader

[QB] - Changed the displayed names from steam to character names

[ESX] - Added new option to shared.lua: [Config.WeaponAsItem] to set [true] if you're using Weapon as items. If not leave it to false.

[BUGFIXES] - Added playerDropped logic

[PLANNED4NEXT] - Multiple life system - Multiple spawn location in base - Scoreboard - Reward System

Version 1.0.3-release:

[BUGFIXES] [QB] & [ESX]

- Fixed small typo getting players being stuck on the game if red side got last player disconected and the game wasnt finishing.
  . Now if any of the teams got 0 players in-game the other team players will be tped and game finishes.

Version 1.0.4-release:

- Fix people not spawning back after game ended
- Added polyzones to the 3 maps
- Added command /leavepaintball (can be changed) so people can leave the game if they are stuck after a disconnect or crash
- Added timer to start a game in lobby phase.
- Added reward function after game ended in shared-server.lua
- Added option to customize qbcore triggers


  Version 1.1.0 -release:

- Added new feature that gets the player inventory cleared and  items saved, and returned all the player items after the game ends
     This feature is editable via shared.server
- Added new feature of random spawns, all editable via shared.lua so you can add as many spawnpoints for each team in each map
- Added new feature of life system to the game, players will have 3 lifes per game, only getting tped out of game after the lifes goes out
- You can enable or disable the life system via shared.lua file ( if disabled, the player gets tped out when gets hitted )
- Added new simply cool Ui during the game displaying the lifes that the player has


* bug fixing
- Fixed bug when sometimes player being hit dies (report any issues so we can doublecheck)
- Fixed typo making sometimes when leaving arena / ending the game the players keep the paintgun


  Version 1.1.1 -release:

  * bugfix 
  - Life system, fixed a bug that makes the players lifes pass over games.(Now for each game all players have 3 lifes)