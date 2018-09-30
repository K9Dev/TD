/// @description 

x = mouse_x;
y = mouse_y;

if(place_meeting(x, y, objUnvalidPath) || place_meeting(x, y, objTowerParent)){
	color = c_red;
}else{
	color = c_white;
}


if(!global.clickedTower){
	instance_destroy();
}