/// @description 

draw_self();

if(scrMouseOver(x, y, sprite_width, sprite_height)){
	draw_circle(x, y, range, true);
}


//var enemy = instance_nearest(path_get_x(path0, 1), path_get_y(path0, 1), objEnemies);

var enemy = instance_nearest(x, y, objEnemies);

if(enemy != noone){
	if(point_distance(x, y, enemy.x, enemy.y) <= range){
		
		if(!firing){
			alarm[0] = 1;
			firing = true;
		}
		
		objToShot = enemy;
		
		if(scrMouseOver(x, y, sprite_width, sprite_height)){
			draw_line(x, y, enemy.x, enemy.y);
		}		
	}else{
		firing = false;
		objToShot = noone;
	}
}