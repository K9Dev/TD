/// @description Spawn Enemies
if(!global.endOfGame){
	
	log("Round Enemies count: " + string(array_length_2d(global.levelEnemies, tempRound)));
	
	for(var k = 0; k < array_length_2d(global.levelEnemies, tempRound); k++){
		var enemyID = global.levelEnemies[tempRound, k];
		
		log("Enemyid: " + string(enemyID));
		var enemy = scrCreateEnemy(real(enemyID), x, y);
		
		//log("Round " + string(tempRound) + "/ Enemy " + string(enemyID) + " spawned!");
	
		with(enemy){
			path_start(0, SPD, path_end(), true);
			origSpeed = path_speed;
			//log("OrigSpeed = " + string(origSpeed));
		}
	}
	
	
	
	//if(spawnCount < spawnAmount){
	
	//	var enemy = scrCreateEnemy(irandom_range(1, 2), x, y);
	
	//	with(enemy){
	//		path_start(0, SPD, path_end(), true);
	//		origSpeed = path_speed;
	//		log("OrigSpeed = " + string(origSpeed));
	//	}
	
	//	spawnCount++;
	
	//	alarm[0] = spawnRate;
	//}else{
		spawning = false;
	//}
}
