/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;


x = localx + ((global.mmX-global.mapOffsetX-1) * 15)
y = localy + ((global.mmY-global.mapOffsetY-1) * 15)

/*
if (y > 438)
	{y = 438}
if (x > 560)
	{x = 560;}
	
if (y < 183)
	{y = 183}
if (x < 64)
	{x = 64;}
	*/


if (canGo == true)
{
	
if ((key_right) && (global.mmX < global.mapSizeX-1))
	{
		if ((x-localx >= 495) && ((abs(global.mapOffsetX) + 34) < global.mapSizeX))
		{global.mapOffsetX++;}

		global.mmX += 1;
		canGo = false;
		alarm[0] = 4;
	}

if (-(key_left) && (global.mmX > 1))
	{
		if ((x == localx) && (global.mapOffsetX > 0))
		{global.mapOffsetX--;}

		global.mmX -= 1;
		canGo = false;
		alarm[0] = 4;
	}
	
if ((key_up) && (global.mmY > 1))
	{
		if ((y == localy) && (global.mapOffsetY > 0))
		{global.mapOffsetY--;}

		global.mmY -= 1;
		canGo = false;
		alarm[0] = 4;
	}

if ((key_down) && (global.mmY < global.mapSizeY-1))
	{
		if (( y-localy >= 255) && ((abs(global.mapOffsetY) + 18) < global.mapSizeY))
		{global.mapOffsetY++;}
		global.mmY += 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	
	
}

if (global.canteleport = true)
{
if (key_attack)
{
	if (obj_miniMap.mapGrid[global.mmY+1,global.mmX+1] = 2)
	{
		scr_saveWarpMath((global.mmX+1),(global.mmY+1));
		global.roomGoto = (string(global.teleportZone) + "_" + string(global.destX) + "_" + string(global.destY));
		global.teleporting = true;
		global.pause = false;
		obj_miniMap.map = false;
		instance_activate_all();
		instance_deactivate_object(obj_mmCursor);
	}
}
}
//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 0))
{instance_destroy();}