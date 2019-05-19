var offsetX,offsetY;
offsetX = 64;
offsetY =  14;

	//Draw Background
	if (global.mmUpgradeUnlocked == true)
	{draw_sprite(spr_mmFull,1,0+offsetX,0+offsetY);}
	else
	{draw_sprite(spr_mmFull,0,0+offsetX,0+offsetY);}
	//Draw Overlay
	for (var i = 0; i<=29; i++)
	{
		for (var j = 0; j<=33; j++) 
		{

			 if (mapGrid[i,j] == 1)
				{
				percentage++;
				}
			else if (mapGrid[i,j] == 2)
				{
				draw_sprite(spr_mmSave,0,offsetX+ 15*(j), offsetY + 15*(i));
				}
			else if (mapGrid[i,j] == 3)
				{
				draw_sprite(spr_mmBoss,0,offsetX+ 15*(j), offsetY + 15*(i));
				}
			else if (mapGrid[i,j] == 4)
				{
				draw_sprite(spr_mmBossDefeat,0,offsetX+ 15*(j), offsetY + 15*(i));
				}
			else
				{
				draw_sprite(spr_mmHide,image_speed,offsetX+ 15*(j), offsetY + 15*(i));// 15 = offset from border
				}
				
		}
	}
	//Draw percentage
	draw_set_font(global.Font);
	draw_text(75,420,"World Discovered: " + string(floor((percentage/12)*100)) + "%"); //////////12 = maximum number of rooms
	percentage = 0;
	//Draw Player
	draw_sprite(spr_mmPlayer,1,offsetX + 15*(global.gridX+(local_x div 640)), offsetY + 15*(global.gridY+(local_y div 480)));


/*
////////Draw Save S's
	for (var i = 0; i<=4; i++)
	{
		for (var j = 0; j<=6; j++) 
		{
			if (mapGrid[i,j] == 2)
			{
				//if ((i == 3) && (j == 3))
				draw_sprite(spr_mmSave,0,offsetX+ 15*(j), offsetY + 15*(i));
				//if ((i == 1) && (j == 2))
				//{draw_sprite(spr_mmSave,0,offsetX+ 15*(j), offsetY + 15*(i));}
			}
		}
	}
//
/////////////////////////////////////////////////////Minimap////////////////////////