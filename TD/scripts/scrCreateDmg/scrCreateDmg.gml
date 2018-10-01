
var dmgTxt = argument0;
var oColor = argument1;
var iColor = argument2;

var dmgIndicator = instance_create_depth(x, y, -9999, objDamageIndicator);

with(dmgIndicator){
	dmg = dmgTxt;
	outlineColor = oColor;
	inlineColor = iColor;
}