/// @description Insert description here
// You can write your code in this editor






if(global.g_time % (15 * room_speed) == 3){
	
	if(!(audio_is_playing(bgm_Music1)) && !(audio_is_playing(bgm_Music2)) && !(audio_is_playing(bgm_Music3)) && !(audio_is_playing(bgm_Music4)) && !(audio_is_playing(bgm_Music5))){
		switch(floor(random(6))){
			case 1:
				audio_play_in_sync_group(asg_Music,bgm_Music1);
			break;
			case 2:
				audio_play_sound(bgm_Music1,2,false);
			break;
			case 3:
				audio_play_sound(bgm_Music3,2,false);
			break;
			case 4:
				audio_play_sound(bgm_Music4,2,false);
			break;
			case 5:
				audio_play_sound(bgm_Music5,2,false);
			break;
		}
	}
}