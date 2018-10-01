/// @description 
if(!global.endOfGame){
	if(global.coins >= cost && !global.clickedTower){
		instance_create_depth(mouse_x, mouse_y, -9, objTowerDragVenom);
	
		global.coins -= cost;
	
		global.clickedTower = true;
	}
}