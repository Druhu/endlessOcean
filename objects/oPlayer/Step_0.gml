//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
if(place_meeting(x, y, oWater)){
	submerged = true;
	walksp = 5;
}
else{
	submerged = false;
}

if(submerged){
	grv = 0.1;
	oxygen -= rateOxygenLoss; //Different fall speeds while in and out of water
}
else{
	grv = 0.5;
	oxygen = 100;
}

var move = key_right - key_left;

hsp = move * walksp;

if(submerged){
	termVelocity = 5;
}
else{
	termVelocity = 25;
}

if(vsp < termVelocity){
	vsp = vsp + grv;
}

if (submerged){
	if (key_jump)
	{
		audio_play_sound(sfx_Swim, 1,false);
		for(i = 0; i < 5; i++){
			if(vsp >= -5){
			vsp --;
			}
		}
	}
}
else{
	if ((place_meeting(x, y + 1, oOceanbed) || place_meeting(x, y + 1, oWall)
		|| place_meeting(x, y + 1, oFloor)) && (key_jump))
	{
		vsp = -10;
	}
}



//Collision with oOceanbed and oBorder. Just copy and paste more if statements
//	to collide with more objects.
if (place_meeting(x + hsp, y, oOceanbed))
{
	while (!place_meeting(x + sign(hsp), y, oOceanbed))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x + hsp, y, oBorder))
{
	while (!place_meeting(x + sign(hsp), y, oBorder))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x + hsp, y, oWall))
{
	while (!place_meeting(x + sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x + hsp, y, oFloor))
{
	while (!place_meeting(x + sign(hsp), y, oFloor))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x, y + vsp, oOceanbed))
{
	while (!place_meeting(x, y + sign(vsp), oOceanbed))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, oBorder))
{
	while (!place_meeting(x, y + sign(vsp), oBorder))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, oWall))
{
	while (!place_meeting(x, y + sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, oFloor))
{
	while (!place_meeting(x, y + sign(vsp), oFloor))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;




//Animation
if (place_meeting(x, y + 1, oOceanbed) || place_meeting(x, y + 1, oBorder)
	|| place_meeting(x, y + 1, oWall) || place_meeting(x, y + 1, oFloor)){
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerRun;
	}
}
else{
	if(sign(vsp) < 0 && submerged){
		image_speed = 1;
		sprite_index = sPlayerSwim;
	}
	else{
		image_speed = 0;
		sprite_index = 2;
		sprite_index = sPlayerSwim;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

//invulnerability
if(invulnerability > 0){
	invulnerability--;
}

if(lives <= 0){
	instance_destroy();
	room_goto(rDead);
}

if(invulnerability <= 1 && oxygen <= 0){
lives --;
invulnerability = room_speed;
flash = 3;
}

if (speed > 0){speed--;}
