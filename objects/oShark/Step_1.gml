/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
	instance_create_layer(x, y, "Tokens", oSharkToothToken);
}

if(place_meeting(x, y, oWater)){
	submerged = true;
}
else{
	submerged = false;
}