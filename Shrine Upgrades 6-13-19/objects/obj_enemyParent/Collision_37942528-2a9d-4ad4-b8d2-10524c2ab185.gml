/// @description Insert description here
// You can write your code in this editor
	if (hit == 0)
	{
		hit = 1;
		vsp = -5;
		//hsp = 5;
		alarm[0] = 25;
		if (other.image_xscale == 1)
		{hsp = 4;}
		else
		{hsp = -4;}
		scr_enemyDmg();
		//image_xscale = sign(hsp);
		hp -= other.damage;
		instance_create_layer(x,y,"ObjOverPlayer",obj_swordEffect);
	}
	