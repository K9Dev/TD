/// @description 

if(spawnCount < spawnAmount){
	instance_create_depth(x, y, -1, objEnemy);
	spawnCount++;
	
	alarm[0] = spawnRate;
}