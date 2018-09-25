/// @description 

if(instance_number(objEnemy) <= 0){
	spawnCount = 0;
	spawnAmount++;
	
	global.level++;
	
	global.hp += 10;
	global.spd += 0.2;
	
	spawnRate -= 2.5;
	
	alarm[0] = spawnRate;
}

alarm[1] = room_speed * 5;