if(invulnerability <= 0){
	flash = 3;
	lives--;
	invulnerability = 60;
}

instance_destroy(other);