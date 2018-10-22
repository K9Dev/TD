/// @function createLevelsConfig()
/// @description Load and read the Level-config

var configData = scrLoadConfig("Config_Levels.json");

var jsonMap = json_decode(configData);
var jsonList = ds_map_find_value(jsonMap, "default");

// Enemy Types Count
global.levels = ds_list_size(jsonList);

// Enemy Data Array
global.levelsdata = ds_grid_create(global.levels, 2);

for (var i = 0; i < global.levels; i++){
	
    var listEntry = ds_list_find_value(jsonList, i);
	
    global.levelsdata[# i, GRID_LVL] = listEntry[? "LVL"];
    global.levelsdata[# i, GRID_ROUNDSTRING] = listEntry[? "ROUNDSTRING"];
	
}