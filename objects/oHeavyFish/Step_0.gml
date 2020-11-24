x += 3 * hsp;
timer--;
if(timer <= 0){
	hsp = 3 *sign( oPlayer.x - x);
	image_xscale *= -1;
	timer = random(250) + 50;
}
if(hp < 500){
hp++;
hp++;
}