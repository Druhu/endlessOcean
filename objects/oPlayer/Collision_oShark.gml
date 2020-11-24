/// @description Insert description here
// You can write your code in this editor
direction = point_direction(other.x, other.y, x, y);
speed = 40;

if(invulnerability <= 0){
	flash = 3;
	lives--;
	invulnerability = 60;
}