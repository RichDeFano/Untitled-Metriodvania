/// @description Insert description here
// You can write your code in this editor
	//instance_create_layer(x,y-30,"ObjUnderPlayer",obj_canTeleport);
	draw_self();
	if (obj_Player.canSave == true)
	{
		if ((distance_to_object(obj_Player) < 50))
		{draw_sprite(spr_mmSave,0,x+15,y-30);}
	}