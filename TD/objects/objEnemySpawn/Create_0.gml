/// @description Spawner
spawnAmount = 5;
spawnCount = 0;

// Spawn 1 enemy all second
spawnRate = 1 * room_speed;

spawning = false;

// Enemy init Values
global.level = 1;
global.coins = 100;

global.spawnerObj = self;

log("SpawnerObj set to: " + string(global.spawnerObj));

