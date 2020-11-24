/// @description Insert description here
// You can write your code in this editor
global.g_time--;

if(room == Room1){
if(global.g_time % (1000 + timer) == 1){
	timer = floor(random(2400));
	b = 3 + random(8);
	for(i = 0; i < b; i++){
		instance_create_layer(oPlayer.x + (1000 * (sign(50 - random(100)))),oPlayer.y + (1000 * (sign(50 - random(100)))),"FishEnemy",oFishEnemy);
		}
	}
}