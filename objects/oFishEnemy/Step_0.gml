image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
direction = image_angle
speed = 2;

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