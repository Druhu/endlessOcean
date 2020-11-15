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
	grv = 0.1;      //Different fall speeds while in and out of water
}
else{
	grv = 0.5;
}

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

if (submerged){
	if (key_jump)
	{
		vsp = -5;
	}
}
else{
	if (place_meeting(x, y + 1, oOceanbed)) && (key_jump)
	{
		vsp = -10;
	}
}



//Collision with oOceanBed
if (place_meeting(x + hsp, y, oOceanbed))
{
	while (!place_meeting(x + sign(hsp), y, oOceanbed))
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
y = y + vsp;




//Animation
if (!place_meeting(x, y + 1, oOceanbed))
{
	sprite_index = sPlayerJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
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

if (hsp != 0) image_xscale = sign(hsp);