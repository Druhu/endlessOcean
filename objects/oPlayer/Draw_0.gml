draw_self();

if (flash > 0)
{
	flash = flash - 1;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

draw_text(oPlayer.x - 25, oPlayer.y - 125, "LIVES:" + string(lives));
draw_text(oPlayer.x - 25, oPlayer.y - 100, "OXYGEN:" + string(oxygen));