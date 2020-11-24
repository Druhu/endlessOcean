if(invulnerability <= 0){
	flash = 3;
	lives--;
	invulnerability = 60;
}
if(random(100) < 50 * toothLevel){
	instance_destroy(other);
}
