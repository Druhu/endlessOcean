if (hp <= 0)
{
	if(random(15) <= 1){
		instance_create_layer(x, y, "Hearts", oHeart);
	}
	instance_destroy();
}

if(place_meeting(x, y, oWater)){
	submerged = true;
}
else{
	submerged = false;
}