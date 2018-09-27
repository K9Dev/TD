
if(global.waitingNextWave && !alarmSet){
	alarm[0] = room_speed * global.waitingNextWaveTime;
	
	alarmSet = true;
}