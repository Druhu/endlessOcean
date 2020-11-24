if(distance_to_object(oPlayer)<= 1700){
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	direction = image_angle + (40 * sin((((global.g_time/20) + offset) % 7)));
	speed = 3;
}

if(!submerged){
y+=10;//Different fall speeds while in and out of water
speed = 0;
}
