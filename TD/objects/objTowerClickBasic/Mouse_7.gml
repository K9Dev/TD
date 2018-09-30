/// @description 

if(global.coins >= cost){
	instance_create_depth(mouse_x, mouse_y, -9, objTowerDragBasic);
	
	global.coins -= cost;
	
	global.clickedTower = true;

}