
if(!global.endOfGame){
	
	// End of path
	if(path_position == 1){
			
		log("Enemy reached end of path, destroy lifes and object");
	
		global.lifes -= LIFECOST;
	
		instance_destroy();
	
	}
	
	// Poison Effect
	if(poisoned){
		poisonTick --;
		
		if(poisonTick <= 0){
			
			poisonDmg = poisonDmgReset * poisonStack;
		
			log("Enemy is poisoned, apply dmg...");
			HP -= poisonDmg;
			scrCreateDmg(string(poisonDmg), c_black, c_lime);
			
			poisonTick = poisonTickReset;
		}
	}
	
}else{
	
	// Stop after game end
	path_speed = 0;
}
