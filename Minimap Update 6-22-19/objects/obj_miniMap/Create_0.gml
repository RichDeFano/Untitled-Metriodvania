/// @description Insert description here
// You can write your code in this editor
global.debugNumb++;
display_set_gui_size(640,480);
//display_set_gui_maximise(2,2,0,0);
scr_buttonMovement();
scr_countUpgrades();
myTextBox = noone;
canReadAgain = true;
/////////////////////////////////////////////////////Minimap////////////////////////
map = false;
percentage = 0;
local_x = obj_Player.x;
local_y = obj_Player.y;

for (var i = 0; i <= global.mapSizeY; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=global.mapSizeX;j++) ////J = X = 7 Columns
	{	
		mapGrid[i,j] = global.mapGrid[i,j];
		//mapGrid[i,j] = 0;
	}
}

			

draw_set_font(global.Font);
/////////////////////////////////////////Upgrades///////////////////////////////////