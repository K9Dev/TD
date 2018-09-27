/// @function createEnemyConfig()
/// @description Load and read the enemy-config

var configData = scrLoadConfig("Config_Enemy.json");

var jsonMap = json_decode(configData);
var jsonList = ds_map_find_value(jsonMap, "default");

// Enemy Types Count
global.enemyTypes = ds_list_size(jsonList);

// Enemy Data Array
global.enemyData = ds_grid_create(global.enemyTypes, 8);

for (var i = 0; i < global.enemyTypes; i++){
	
    var listEntry = ds_list_find_value(jsonList, i);
	
    global.enemyData[# i, GRID_ID] = listEntry[? "ID"];
    global.enemyData[# i, GRID_NAME] = listEntry[? "NAME"];
    global.enemyData[# i, GRID_RARITY] = listEntry[? "RARITY"];
    global.enemyData[# i, GRID_DEF] = listEntry[? "DEF"];
    global.enemyData[# i, GRID_SPD] = listEntry[? "SPD"];
    global.enemyData[# i, GRID_HP] = listEntry[? "HP"];
    global.enemyData[# i, GRID_SPRITE] = listEntry[? "SPRITE"];
	global.enemyData[# i, GRID_COINS] = listEntry[? "COINS"];
	
}