/// @description Spawner
spawnAmount = 2;
spawnCount = 0;

// Spawn 1 enemy all second
spawnRate = 1 * room_speed;

spawning = false;

// Enemy init Values

global.spawnerObj = self;

log("SpawnerObj set to: " + string(global.spawnerObj));

