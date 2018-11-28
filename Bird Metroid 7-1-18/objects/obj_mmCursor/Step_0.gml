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

if (key_attack)
{
	if (mapGrid[global.mmY,global.mmX] = 2)
	{room_goto(global.zone + "_" + global.mmX + "_" + global.mmY);}
}
//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));