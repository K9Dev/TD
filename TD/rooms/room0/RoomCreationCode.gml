

// Init
scrSetupMacrosAndGlobals();

// Load configfiles
scrCreateEnemyConfig();

scrCreateLevelsConfig();

var lvlString = global.levelsdata[# 0, GRID_ROUNDSTRING];

log("Levelstring: " + lvlString);

scrDecodeLvlString(lvlString);