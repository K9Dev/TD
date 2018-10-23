
// Enemy Config Macros
#macro GRID_ID 0
#macro GRID_NAME 1
#macro GRID_RARITY 2
#macro GRID_DEF 3
#macro GRID_SPD 4
#macro GRID_HP 5
#macro GRID_SPRITE 6
#macro GRID_COINS 7
#macro GRID_LIFECOST 8

// Levels Config Macros
#macro GRID_LVL 0
#macro GRID_ROUNDSTRING 1

// Global Vars
global.debugMode = false;

global.cheating = false;

global.waitingNextWave = false;
global.waitingNextWaveTime = 10;

global.endOfGame = false;

global.clickedTower = false;

global.projectileSpeed = 10;

global.coins = 250;
global.lifes = 10;
global.level = 1;

global.poisonStacksMax = 2;

global.enemiesPerRound = [];