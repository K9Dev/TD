
log("Check speed... (spd: " + string(path_speed) + ")");
if(path_speed >= 0.5){
	
	var checkValue = path_speed - other.freezeValue;
	
	if(checkValue >= 0.5){
		path_speed -= other.freezeValue;
	
		alarm[0] = room_speed * 3;
	
		log("Freezed!  Spd: " + string(path_speed));
	}else{
		path_speed = 0.5;
		alarm[0] = room_speed * 3;
		
		log("Maximum Freeze!  Spd: " + string(path_speed));
	}
	
}else{
	alarm[0] = room_speed * 3;
}

HP -= other.dmg;

with(other){
	instance_destroy();
}