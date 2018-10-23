
global.cheating = false;

if(global.enemyData[# 0, GRID_COINS] != 20){
	global.cheating = true;
}

if(global.enemyData[# 0, GRID_LIFECOST] != 2){
	global.cheating = true;
}

if(global.enemyData[# 0, GRID_HP] != 100){
	global.cheating = true;
}

if(global.enemyData[# 0, GRID_SPD] != 2.5){
	global.cheating = true;
}



if(global.enemyData[# 1, GRID_COINS] != 50){
	global.cheating = true;
}

if(global.enemyData[# 1, GRID_LIFECOST] != 1){
	global.cheating = true;
}

if(global.enemyData[# 1, GRID_HP] != 160){
	global.cheating = true;
}

if(global.enemyData[# 1, GRID_SPD] != 1){
	global.cheating = true;
}
 

var roundStr = "2-2-2/2-2-2-2/2-2-2-2-2-2-1/1-1-1-1-1-1-1-1-1-1-1-1-1-1/2-2-2-2-2-2-2-2-2-1-1-1-1-2-2-2/1-1-2-2-2-2-2-2-1-1-1-2-2-2-1-1-1-2-2-2-2-2-1-1-1";
 
if(global.roundString != roundStr){
	global.cheating = true;
}



if(global.cheating){
	global.endOfGame = true;
	global.gameWon = false;
}