/// @description Spawner
spawnAmount = 3;
spawnCount = 0;

// Spawn 1 enemy all second
spawnRate = 1 * room_speed;

spawning = false;

// Enemy init Values
global.level = 1;
global.coins = 1000;

global.spawnerObj = self;

log("SpawnerObj set to: " + string(global.spawnerObj));

