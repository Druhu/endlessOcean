cooldown--;

if(cooldown <= 0){
	cooldown = 200 + random(50) + random(50);
	instance_create_layer(x, y, "HotGas", oHotGas);
}