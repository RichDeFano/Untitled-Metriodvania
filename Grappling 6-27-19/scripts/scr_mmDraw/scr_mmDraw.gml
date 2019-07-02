var offsetX,offsetY;
xcreate = camera_get_view_x(view_camera[0]) + 5 +59;
ycreate = camera_get_view_y(view_camera[0]) - 13 +75;
//scr_calcMapOffset();
offsetX = xcreate -(15*global.mapOffsetX) ; //14
offsetY =  ycreate -(15*global.mapOffsetY) ; //64


	//Draw Background
	
	if (global.mmUpgradeUnlocked == true)
	{draw_sprite(spr_mmFull,1,0+offsetX,0+offsetY);}
	else
	{draw_sprite(spr_mmFull,0,0+offsetX,0+offsetY);}
	
	//Draw Overlay
	for (var i = 0; i<=global.mapSizeY; i++)
	{
		for (var j = 0; j<=global.mapSizeX; j++) 
		{

			 if (obj_miniMap.mapGrid[i,j] == 1)
				{
				obj_miniMap.percentage++;
				}
			else if (obj_miniMap.mapGrid[i,j] == 2)
				{
				draw_sprite(spr_mmSave,0,offsetX+ 15*(j)-30, offsetY + 15*(i)-30);
				}
			else if (obj_miniMap.mapGrid[i,j] == 3)
				{
				draw_sprite(spr_mmBoss,0,offsetX+ 15*(j)-30, offsetY + 15*(i)-30);
				}
			else if (obj_miniMap.mapGrid[i,j] == 4)
				{
				draw_sprite(spr_mmBossDefeat,0,offsetX+ 15*(j)-30, offsetY + 15*(i)-30);
				}
			else
				{
				//draw_sprite(spr_mmHide,image_speed,offsetX+ 15*(j)-30, offsetY + 15*(i)-30);// 15 = offset from border
				}
				
		}
	}
	
	if (global.bossDefeated1 == true)
	{
		draw_sprite(spr_mmSecret,0,offsetX+ 15*(23+1)-30+1, offsetY + 15*(30+1)-30+1);
	}
	
		
	//Draw percentage
	//draw_set_font(global.Font);
	draw_text(75,420,"World Discovered: " + string(floor((obj_miniMap.percentage/12)*100)) + "%"); //////////12 = maximum number of rooms
	obj_miniMap.percentage = 0;
	//Draw Player
	draw_sprite(spr_mmPlayer,1,offsetX + 15*(global.gridX+(obj_miniMap.local_x div 640)) - 30, offsetY + 15*(global.gridY+(obj_miniMap.local_y div 480)) - 30);


/*
////////Draw Save S's
	for (var i = 0; i<=4; i++)
	{
		for (var j = 0; j<=6; j++) 
		{
			if (obj_miniMap.mapGrid[i,j] == 2)
			{
				//if ((i == 3) && (j == 3))
				draw_sprite(spr_mmSave,0,offsetX+ 15*(j), offsetY + 15*(i));
				//if ((i == 1) && (j == 2))
				//{draw_sprite(spr_mmSave,0,offsetX+ 15*(j), offsetY + 15*(i));}
			}
		}
	}
//
localx = camera_get_view_x(view_camera[0]) + 6 +59;
localy = camera_get_view_y(view_camera[0]) - 12 +75;
//localx = 72;
//localy = 91;
imgspd = 0.5
canGo = true;
if (global.pause == false)
{
	instance_destroy();
}


scr_calcMapOffset();
x = localx + ((global.mmX-global.mapOffsetX-1) * 15)
y = localy + ((global.mmY-global.mapOffsetY-1) * 15)
/////////////////////////////////////////////////////Minimap////////////////////////