//log("Path pos: " + string(path_position));
if(!global.endOfGame){
	if(path_position == 1){
		// End of path
	
		log("Enemy reached end of path, destroy lifes and object");
	
		global.lifes -= 20;
	
		instance_destroy();
	
	}
	
	if(poisoned && alarm[1] < 0){
		
		log("Enemy is poisoned, apply ticks");
		alarm[1] = poisonTick;
	}
	
}else{
	path_speed = 0;
}
