/// @description 
if(!global.endOfGame){
	if(instance_number(objEnemy) <= 0){
	
		global.waitingNextWave = true;
	
		log("Check if enemies died..");
		if(!alarm[3] && !spawning){
			log("Setting alarm to spawn 10sec..");
			alarm[3] = room_speed * global.waitingNextWaveTime;
		}

	
		if(spawning){
		
			log("Spawning true, spawn!");
			spawnCount = 0;
			spawnAmount++;
	
			global.level++;
			global.waitingNextWave = false;
	
			tempRound++;
	
			//spawnRate -= 2.5;
	
			scrIncreaseEnemyStats(2.5, 0.1, 15, 10, 1);
			scrIncreaseEnemyStats(2.5, 0.2, 30, 20, 2);
	
			alarm[0] = spawnRate;
		
			spawning = false;
		}
	}

	alarm[1] = room_speed * 1;
	
}