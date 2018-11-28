//if ((collision_point(x,y,obj_deadly,0,0)) && (dmgblinking == false))
//{
if (dmgblinking == false) && (dashing == false)
{
		hp -= other.damage
		dmgblinking = true;
		dmgfrozen = true;
		move_lock = true;
		move = 0;
		sprite_index = spr_player_hurt;
		image_speed = 0.9;
		alarm[6] = 30;
		alarm[7] = 100;
		alarm[8] = 2;
}