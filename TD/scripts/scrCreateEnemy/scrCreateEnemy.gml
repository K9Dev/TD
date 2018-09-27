/// @function createEnemy(enemyId, enemyX, enemyY)
/// @description 
/// @param {integer} enemyId
/// @param {integer} enemyX
/// @param {integer} enemyY
var enemyId = argument0;

var enemyX = argument1;
var enemyY = argument2;

for(var i = 0; i < global.enemyTypes; i++){
	if(global.enemyData[# i, GRID_ID] == enemyId){
		var enemy = instance_create_depth(enemyX, enemyY, -1, objEnemy);
		
		with(enemy){
			// Load Values for Enemy
			setEnemyConfigValues(enemyId);
			
			sprite_index = asset_get_index(SPRITE);
			
			log("Enemy (ID: " + string(enemyId) + ") spawnd!");
		}
	}
}

return enemy;
