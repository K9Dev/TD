/// @description

draw_set_color(c_black);
draw_text(x-170, 10, "Coins: " + string(global.coins));
draw_text(x-170, 30, "Level: " + string(global.level));

if(global.waitingNextWave){
	draw_text(x-170, 50, "Next wave in: " + string(alarm[0]/room_speed) +" seconds");
}

draw_text(x-170, 70, "Lifes: " + string(global.lifes));

draw_set_color(c_white);