x += 3 * hsp;
timer--;
if(timer <= 0){
	hsp *= -1;
	image_xscale *= -1;
	timer = random(250) + 50;
}
