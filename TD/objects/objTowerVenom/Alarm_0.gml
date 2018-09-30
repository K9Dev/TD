/// @description

if(instance_exists(objToShot)){
	var projectile = instance_create_depth(x, y, -9, objTowerVenomProjectile);
	
	projectile.speed = 9;
	projectile.direction = point_direction(x, y, objToShot.x, objToShot.y);
	
	alarm[0] = fireRate;
}else{
	firing = false;
}