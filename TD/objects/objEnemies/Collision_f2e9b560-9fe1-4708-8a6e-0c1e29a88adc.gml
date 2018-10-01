/// @description 

if(!global.endOfGame){

	if(!poisoned){
		poisoned = true;
		poisonDuration = other.poisonDuration;
		poisonDmg = other.poisonDmg;
		poisonTick = other.poisonTick;
		poisonTickReset = poisonTick;
		
		poisonStack ++;
		
		poisonDmgReset = poisonDmg;
		
		alarm[1] = poisonDuration;
	
		log("Enemy Poisoned");
	}else{
		
		if(poisonStack < global.poisonStacksMax){
			poisonStack ++;
		}
		
		alarm[1] = poisonDuration;
	
		log("Enemy re-poisoned");
	}
	
	HP -= other.dmg;
	scrCreateDmg(string(other.dmg), c_black, c_green);
	
	with(other){
		instance_destroy();
	}
}