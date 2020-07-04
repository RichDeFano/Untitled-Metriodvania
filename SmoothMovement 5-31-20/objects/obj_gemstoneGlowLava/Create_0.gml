/// @description Insert description here
// You can write your code in this editor
//global.roomdark = true;
event_inherited();

randSize = random_range(16,48);
thisColor = irandom_range(0,2);

if (thisColor == 0)
	{thisColor = c_red;}
else if (thisColor == 1)
	{thisColor = c_orange;}
else
	{thisColor = c_yellow;}