/// @description

if(!global.endOfGame){
	HP -= other.dmg;
	scrCreateDmg(string(other.dmg), c_black, c_red);

	with(other){
		instance_destroy();
	}
}