/// @function setEnemyValues(sprite_string)
/// @description Get enemy Values
/// @param {string} sprite_string 

var enemyId = argument0;

if(global.debugMode){
	log("Loading Enemy Values for ID: " + string(enemyId));
	
}

for(var i = 0; i < global.enemyTypes; i++){
	
	if(global.enemyData[# i, GRID_ID] == enemyId){
		
		ID = global.enemyData[# i, GRID_ID];
		NAME = global.enemyData[# i, GRID_NAME];
		RARITY = global.enemyData[# i, GRID_RARITY];
		DEF = global.enemyData[# i, GRID_DEF];
		SPD = global.enemyData[# i, GRID_SPD];
		HP = global.enemyData[# i, GRID_HP];
		COINS = global.enemyData[# i, GRID_COINS];
		SPRITE = global.enemyData[# i, GRID_SPRITE];
		LIFECOST = global.enemyData[# i, GRID_LIFECOST];
		
		MAXHP = HP;
		
		if(global.debugMode){
			log("====================================");
			log("Loaded values:");
			log("ID: " + string(ID));
			log("NAME: " + NAME);
			log("RARITY: " + RARITY);
			log("DEF: " + string(DEF));
			log("SPD: " + string(SPD));
			log("HP: " + string(HP));
			log("COINS: " + string(COINS));
			log("SPRITE: " + SPRITE);
			log("LIFECOST: " + string(LIFECOST));
			log("====================================");
		}
		
	}
}

if(global.debugMode){
	log("Loading Enemy Values done.");
}