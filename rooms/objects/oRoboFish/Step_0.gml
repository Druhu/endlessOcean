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
	speed = point_distance(x,y,mouse_x,mouse_y)/10;
	break;

}