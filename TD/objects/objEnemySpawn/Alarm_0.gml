/// @description Spawn Enemies

spawnAmount = array_length_2d(global.enemiesPerRound, roundCount);


if(!global.endOfGame){
	
	
	//log("Round Enemies count: " + string(array_length_2d(global.enemiesPerRound, tempRound)));
	
	//for(var k = 0; k < array_length_2d(global.enemiesPerRound, tempRound); k++){
	//	var enemyID = global.enemiesPerRound[tempRound, k];
		
	//	log("Enemyid: " + string(enemyID));
	//	var enemy = scrCreateEnemy(real(enemyID), x, y);
		
	//	//log("Round " + string(tempRound) + "/ Enemy " + string(enemyID) + " spawned!");
	
	//	with(enemy){
	//		path_start(0, SPD, path_end(), true);
	//		origSpeed = path_speed;
	//		//log("OrigSpeed = " + string(origSpeed));
	//	}
	//}
	
	if(spawnCount < spawnAmount){
		var enemyID = global.enemiesPerRound[roundCount, spawnCount];
		
		log("Enemyid: " + string(enemyID));
		var enemy = scrCreateEnemy(real(enemyID), x, y);
		
		with(enemy){
			path_start(0, SPD, path_end(), true);
			origSpeed = path_speed;
			//log("OrigSpeed = " + string(origSpeed));
		}
		
		spawnCount++;
		
		alarm[0] = spawnRate;
		
	}else{
		spawning = false;
	}
	
}
