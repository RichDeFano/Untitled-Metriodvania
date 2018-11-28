/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
x = localx + (global.mmX * 16);
y = localy + (global.mmY * 16);


if (canGo == true)
{
	
if ((key_right) && (global.mmX < 31))
	{
		global.mmX += 1;
		canGo = false;
		alarm[0] = 4;
	}

else if (-(key_left) && (global.mmX > 0))
	{
		global.mmX -= 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	if ((key_up) && (global.mmY > 0))
	{
		global.mmY -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY < 19))
	{
		global.mmY += 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	
	
}

if (global.canteleport = true)
{
if (key_attack)
{
	if (obj_miniMap.mapGrid[global.mmY,global.mmX] = 2)
	{
		obj_miniMap.map = false;
		global.roomGoto = (string(global.zone) + "_" + string(global.mmX) + "_" + string(global.mmY));
		global.teleporting = true;
		obj_miniMap.map = false;
		instance_activate_all();
		instance_deactivate_object(obj_mmCursor);
	}
}
}
//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 0))
{instance_destroy();}