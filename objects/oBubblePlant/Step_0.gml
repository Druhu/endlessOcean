cooldown--;

if(cooldown <= 0){
	cooldown = 600;
	instance_create_layer(x, y, "Bubbles", oBubble);
	audio_play_sound(sfx_BubbleVent,1,false);
}