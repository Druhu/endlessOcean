/// @description Insert description here
// You can write your code in this editor
if (speed > 0){
	speed = speed - 0.1;
}
if(global.g_time == lifetimeEnd){
instance_destroy();
}