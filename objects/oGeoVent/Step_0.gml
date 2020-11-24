cooldown--;

if(cooldown <= 0){
	cooldown = 600;
	instance_create_layer(x, y, "HotGas", oHotGas);
}