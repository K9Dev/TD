/// @description Spawner
spawnAmount = 0;
spawnCount = 0;

//spawnRounds = global.levels;

roundCount = 0;

// Spawn 1 enemy all second
spawnRate = 0.8 * room_speed;

spawning = false;

// Enemy init Values

global.spawnerObj = self;

log("SpawnerObj set to: " + string(global.spawnerObj));

