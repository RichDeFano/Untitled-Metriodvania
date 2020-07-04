var closedeath = (instance_nearest(x,y,obj_deadly));



if ((dying == false) && collision_circle(x,y,5,obj_deadly,0,1))
{
	if (closedeath.hidden == false)
	{
	dying = true;
	sprite_index = spr_player_hit;
	image_speed = 0.5;
	}
}

if ((dying == true) && (sprite_index = spr_player_hit))
{
	
	
if (instance_nearest(x,y,obj_deadly).x >= x)
{
x -= 1
alarm[1] = 1
}

if (instance_nearest(x,y,obj_deadly).x < x)
{
x += 1
alarm[2] = 1
}

}