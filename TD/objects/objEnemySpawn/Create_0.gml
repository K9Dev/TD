/// @description Spawner
spawnAmount = 5;
spawnCount = 0;

// Spawn 1 enemy all second
spawnRate = 1 * room_speed;

// Every sec
alarm[0] = 1;

// Every 5 sec
alarm[1] = room_speed * 5;

// Enemy init Values
global.hp = 100;
global.spd = 1;
global.level = 1;

global.coins = 100;