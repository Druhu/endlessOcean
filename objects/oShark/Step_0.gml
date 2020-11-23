/// @description Insert description here
// You can write your code in this editor

if(global.g_time % 60 == 30){
	switch(AIMode){
		case "patrol":
			if (distance_to_object(oPlayer) < (baseDetectRadius + (10 * alertLevel))){
				AIMode = "chase";
				}
		break;
		
		case "chase":
		
			if (distance_to_object(oPlayer) >= (baseDetectRadius + (10 * alertLevel))){
				AIMode = "patrol";
				targetX = patrolA;
				targetY = patrolY;
				}
		
		
		break;
		}
	}
	
switch(AIMode){
	
	
	case "chase":
		targetX = oPlayer.x;
		targetY = oPlayer.y;
		if (distance_to_point(targetX,targetY) < (baseDetectRadius + (10 * alertLevel))){
			direction = point_direction(x, y, targetX, targetY);
			speed = 2;
			hspeed *= 2; //sharks move faster horizontally
	
			}
		else{
			speed -= speed / 50;
			}
	break;
	
	
	case "patrol":
		if(distance_to_point(targetX,targetY) < 10){
			if (targetX == patrolA){
				targetX = patrolB;
				}
			else{
				targetX = patrolA;
				targetY = patrolY;
					}
			}
		direction = point_direction(x, y, targetX, targetY);
		speed = 2;
		hspeed *= 2; //sharks move faster horizontally
	break;

}

if (hspeed < 0){                       // this makes the shark turn around
	image_xscale = 2;
}
else{ image_xscale = -2;}

