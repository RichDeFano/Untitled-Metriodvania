/// @description Insert description here
// You can write your code in this editor
if (global.magnetMoneyUnlocked == true)
{
	if (distance_to_object(obj_Player) <= 200)
	{
		move_towards_point(obj_Player.x,obj_Player.y,spd)
		spd += 0.05;
	}
}
