/// @description

if(!global.endOfGame){
	if(instance_exists(objToShot)){
		var projectile = instance_create_depth(x, y, -9, objTowerFlareProjectile);
	
		projectile.speed = 10;
		projectile.direction = point_direction(x, y, objToShot.x, objToShot.y);
	
		alarm[0] = fireRate;
	}else{
		firing = false;
	}
}