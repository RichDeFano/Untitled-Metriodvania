/// @description Insert description here
// You can write your code in this editor
var toX, toY;
toX = hud_moneyCounter.toX;
toY = hud_moneyCounter.toY;


spd += .5;

move_towards_point(toX,toY, spd);

if (distance_to_point(toX,toY) <= 25)
{
	global.money += 1;
	instance_destroy();
}