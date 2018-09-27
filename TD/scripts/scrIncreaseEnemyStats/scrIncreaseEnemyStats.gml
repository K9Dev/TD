/// @function increaseEnemyStats(def, spd, hp, coins)
/// @description Get enemy Values
/// @param {real} DEF 
/// @param {real} SPD
/// @param {real} HP
/// @param {real} COINS
/// @param {real} ENEMYID (Optional)

var def = argument0;
var spd = argument1;
var hp = argument2;
var coins = argument3;
var enemyId = argument4;

if(enemyId == noone){
	for(var i = 0; i < global.enemyTypes; i++){
		
		global.enemyData[# i, GRID_DEF] += def;
		global.enemyData[# i, GRID_SPD] += spd;
		global.enemyData[# i, GRID_HP] += hp;
		global.enemyData[# i, GRID_COINS] += coins;
		
		if(global.debugMode){
			
			ID = global.enemyData[# i, GRID_ID];
			DEF = global.enemyData[# i, GRID_DEF];
			SPD = global.enemyData[# i, GRID_SPD];
			HP = global.enemyData[# i, GRID_HP];
			COINS = global.enemyData[# i, GRID_COINS];
			
			log("====================================");
			log("Increased values (from ID: " + string(ID) + " to:");
			log("DEF: " + string(DEF));
			log("SPD: " + string(SPD));
			log("HP: " + string(HP));
			log("COINS: " + string(COINS));
			log("====================================");
		}
		
	}
}else{
	
	for(var i = 0; i < global.enemyTypes; i++){
	
		if(global.enemyData[# i, GRID_ID] == enemyId){
		
			global.enemyData[# i, GRID_DEF] += def;
			global.enemyData[# i, GRID_SPD] += spd;
			global.enemyData[# i, GRID_HP] += hp;
			global.enemyData[# i, GRID_COINS] += coins;
		
			if(global.debugMode){
				
				ID = global.enemyData[# i, GRID_ID];
				DEF = global.enemyData[# i, GRID_DEF];
				SPD = global.enemyData[# i, GRID_SPD];
				HP = global.enemyData[# i, GRID_HP];
				COINS = global.enemyData[# i, GRID_COINS];
				
				log("====================================");
				log("DEF: " + string(DEF));
				log("SPD: " + string(SPD));
				log("HP: " + string(HP));
				log("COINS: " + string(COINS));
				log("====================================");
			}
		
		}
	}
	
}

if(global.debugMode){
	log("Increasing Enemy Stats done.");
	
}
