/// @description

draw_set_color(c_black);
draw_text(x-170, 10, "Coins: " + string(global.coins));
draw_text(x-170, 30, "Round: " + string(global.level) + " / " + string(global.numberOfRounds));

if(global.waitingNextWave && !global.endOfGame){
	draw_text(x-170, 50, "Next wave in: " + string(alarm[0]/room_speed) +" seconds");
}

draw_text(x-170, 70, "Lifes: " + string(global.lifes));
//draw_text(x-390, 250, "GAME WON!");	

if(global.endOfGame && !global.cheating){
	if(global.gameWon){
		draw_text(x-390, 250, "GAME WON!");	
	}else{
		draw_text(x-390, 250, "GAME LOST...");	
	}
}

if(global.cheating){
	draw_text_ext_transformed(x-590, 200, "Bisch am Cheate?",10,150,3,3,image_angle);
	draw_text_ext_transformed(x-550, 260, "Hayay Burtschli, gad neu entpacke oder changes reverte.",20,150,2,2,image_angle);
}

draw_set_color(c_white);