/// @description 
if(!global.endOfGame){
	if(global.coins >= cost){
		instance_create_depth(mouse_x, mouse_y, -9, objTowerDragBasic);
	
		global.clickedTower = true;
		global.clickedTowerCost = cost;

	}
}