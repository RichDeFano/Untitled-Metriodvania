//if ((collision_point(x,y,obj_deadly,0,0)) && (dmgblinking == false))
//{
var oldhp,newhp,diff;

if (dmgblinking == false) && (dashing == false)
{
		oldhp = hp;
		//hp -= other.damage
		newhp = (oldhp-other.damage);
		diff =(oldhp-newhp);
		while (diff > 0)
		{
			hp -= 1;
			instance_create_layer(x,y,"ObjOverPlayer",obj_hpFeather);
			diff -= 1;
		}
			
		dmgblinking = true;
		dmgfrozen = true;
		move_lock = true;
		move = 0;
		sprite_index = spr_player_hurt;
		//instance_create_layer(x,y,"ObjOverPlayer",obj_hpFeather);
		image_speed = 0.9;
		alarm[6] = 30;
		alarm[7] = 100;
		alarm[8] = 2;
}