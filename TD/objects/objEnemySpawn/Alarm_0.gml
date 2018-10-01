/// @description Spawn Enemies
if(!global.endOfGame){
	if(spawnCount < spawnAmount){
	
		var enemy = scrCreateEnemy(irandom_range(1, 2), x, y);
	
		with(enemy){
			path_start(0, SPD, path_end(), true);
			origSpeed = path_speed;
			log("OrigSpeed = " + string(origSpeed));
		}
	
		spawnCount++;
	
		alarm[0] = spawnRate;
	}else{
		spawning = false;
	}
}
