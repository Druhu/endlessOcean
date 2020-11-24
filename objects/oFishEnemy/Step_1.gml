if (hp <= 0)
{
	if(random(15) <= 1){
		instance_create_layer(x, y, "Hearts", oHeart);
	}
	instance_destroy();
}