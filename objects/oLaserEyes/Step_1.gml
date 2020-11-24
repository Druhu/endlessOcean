x = oRoboFish.x;
y = oRoboFish.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button(mb_left) && oRoboFish.fishMode == "pursue")
{
	if(!audio_is_playing(sfx_Laser)){
		audio_play_sound(sfx_Laser,1,true);
	}
	for(i = 0; i < oPlayer.laserLevel; i++){
		with (instance_create_layer(x, y, "Laser", oLaser))
		{
			speed = 20;
			direction = other.image_angle
			image_angle = direction;
		}
	}
}
if(!(mouse_check_button(mb_left) && oRoboFish.fishMode == "pursue")){
	audio_stop_sound(sfx_Laser);
}