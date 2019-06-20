//if ((collision_point(x,y,obj_deadly,0,0)) && (dmgblinking == false))
//{
if (dmgblinking == false) 
{
		hp -= other.damage
		dmgblinking = true;
		dmgfrozen = true;
		move_lock = true;
		//sprite_index = spr_player_hurt;
		image_speed = 0.9;
		alarm[1] = 30;
		alarm[2] = 100;
		alarm[3] = 2;
}