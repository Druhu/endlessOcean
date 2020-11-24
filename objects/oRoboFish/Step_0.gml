/// @description Insert description here
// You can write your code in this editor



switch(fishMode){

case "cursor":
	x = mouse_x;
	y = mouse_y;
    if(image_angle != cursorRotationSetting){
	image_angle = cursorRotationSetting;
	}
	break;
	
case "pursue":
	direction = point_direction(x,y,mouse_x, mouse_y);
	image_angle = direction;
	speed = point_distance(x,y,mouse_x,mouse_y)/10 - 3;
	switch(fishWeapon){   //things it can do depending on what weapon its using
		
		
		case "trail":      //Trail: lays down a trail of static bullets if its moving fast enough
			if(speed > 3 && (global.g_time % 2) == 0){
				for(i = 0; i < ((speed/2) * trailLevel); i++){
					instance_create_layer(x - (20 * cos(degtorad(direction))) + random_range(-10,10),y + (20 * sin(degtorad(direction))) + random_range(-10,10),"FishEnemy",oStaticBullet);
				}
			}
			
			
			
		case "laser":
			
		break;
	}
	break;

}
trailLevel = oPlayer.trailLevel;