/// @description 

if(!global.endOfGame){

	poisoned = true;
	poisonDuration = other.poisonDuration;
	poisonDmg = other.poisonDmg;
	poisonTick = other.poisonTick
	
	alarm[1] = poisonTick;
	
	log("Enemy Poisoned");
}