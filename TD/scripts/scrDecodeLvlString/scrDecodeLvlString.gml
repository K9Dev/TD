/// @function scrDecodeLvlString(level)
/// @description Decode level
/// @param {string} levelString

var levelString = argument0;


var roundsDelim = "/";
var enemyDelim = "-";

var slot = 0;
var slot2 = 0;

var rounds;
var enemies;

var currentSplit = "";

var i;

// Number of rounds
for(i = 1; i < (string_length(levelString) + 1); i++){
	var currentString = string_copy(levelString, i, 1);
	
	if(currentString == roundsDelim) {
		rounds[slot] = currentSplit;
		slot++;
		currentSplit = "";
	}else{
		currentSplit += currentString;
		rounds[slot] = currentSplit;
	}
}

global.numberOfRounds = array_length_1d(rounds);

log("Rounds: " + string(global.numberOfRounds));

currentSplit = "";


// Enemy Types per round
for(i = 0; i < global.numberOfRounds; i++){
	var lvlRound = rounds[i];
	//log("Round " + string(i) + ": " + lvlRound);
	
	for(y = 1; y < (string_length(lvlRound) + 1); y++){
		var curStr = string_copy(lvlRound, y, 1);
	
		if(curStr == enemyDelim) {
			
			global.enemiesPerRound[i, slot2] = currentSplit;
			
			//log("Enemy S Added: " + string(global.enemiesPerRound[i, slot2]));
			
			slot2++;
			currentSplit = "";
		}else{
			currentSplit += curStr;
			global.enemiesPerRound[i, slot2] = currentSplit;
			
			//log("Enemy Added: " + string(global.enemiesPerRound[i, slot2]));
		}
	}
	
	slot2 = 0;
	currentSplit = "";
	
	log("Round " + string(i) + " Enemies count: " + string(array_length_2d(global.enemiesPerRound, i)));
}

var k = 0;

for(k = 0; k < global.numberOfRounds; k++){
	var str = "";
	
	for(var i = 0; i < array_length_2d(global.enemiesPerRound, k); i++){
		str += string(global.enemiesPerRound[k, i]) + " ";	
	}
	
	log("Enemies in Round " + string(k) + ": " + str); 
}

