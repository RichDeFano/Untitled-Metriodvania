/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(640,480);
//display_set_gui_maximise(2,2,0,0);

/////////////////////////////////////////////////////Minimap////////////////////////
map = false;
percentage = 0;
local_x = obj_Player.x;
local_y = obj_Player.y;

for (var i = 0; i <= 4; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=6;j++) ////J = X = 7 Columns
	{
		mapGrid[i,j] = 0;
	}
}
/////////////////////////////////////////Upgrades///////////////////////////////////