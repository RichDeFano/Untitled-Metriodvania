/////////////////////////////////////////////////////Minimap////////////////////////
var offsetX,offsetY;
offsetX = 64;
offsetY =  84;
if (map == true)
{
	//Draw Background
	draw_sprite(spr_pauseBG,1,0,0);
	draw_sprite(spr_mm,1,0+offsetX,0+offsetY);
	//Draw Overlay
	for (var i = 0; i<=4; i++)
	{
		for (var j = 0; j<=6; j++) 
		{
			if (mapGrid[i,j] == 0)
			{
				 draw_sprite(spr_mmHide,image_speed,offsetX+ 16*(j), offsetY + 16*(i));// 16 = offset from border
				///draw_sprite_ext( spr_mmHide, subimg, x, y, xscale, yscale, rot, colour, alpha )
			}
			else
			{
				percentage++;
			}
		}
	}
	//Draw percentage
	draw_set_font(global.Font);
	draw_text(75,420,"World Discovered: " + string(floor((percentage/12)*100)) + "%"); //////////12 = maximum number of rooms
	percentage = 0;
	//Draw Player
	draw_sprite(spr_mmPlayer,1,offsetX + 16*(global.gridX+(local_x div 640)), offsetY + 16*(global.gridY+(local_y div 480)));
	
}
/////////////////////////////////////////////////////Minimap////////////////////////