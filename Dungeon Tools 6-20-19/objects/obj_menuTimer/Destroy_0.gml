/// @description Insert description here
// You can write your code in this editor
if (anyPressed == 1)
{
global.newKey = thisStr;


if (global.mmY6 == 0)	//Up
	{
		global.P1key_up = global.newKey;
	}
if (global.mmY6 == 1)	//Down
	{
		global.P1key_down = global.newKey;
	}
if (global.mmY6 == 2)	//Right
	{
		global.P1key_right = global.newKey;
	}
if (global.mmY6 == 3)	//Left
	{
		global.P1key_left = global.newKey;
	}
if (global.mmY6 == 4)	//Jump
	{
		global.P1key_jump = global.newKey;
	}
if (global.mmY6 == 5)	//Attack
	{
		global.P1key_attack = global.newKey;
	}
if (global.mmY6 == 6)	//Dash
	{
		global.P1key_dash = global.newKey;
	}
if (global.mmY6 == 7)	//Start
	{
		global.P1key_start = global.newKey;
	}
if (global.mmY6 == 8)	//lBumper	
	{
		global.P1key_ltr = global.newKey;
	}
if (global.mmY6 == 9)	//rBumper
	{
		global.P1key_rtr = global.newKey;
	}
}

obj_mmCursor6.alarm[2] = 5;