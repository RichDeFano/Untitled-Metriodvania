var settingStr = "";
var textX = 463;
var textY = 311;
var checkingForKey = false;
draw_set_font(global.Font);

if (global.mmY6 == 0)	//Up
	{
		settingStr = "Setting Key: Up...";
	}
if (global.mmY6 == 1)	//Down
	{
		settingStr = "Setting Key: Down...";
	}
if (global.mmY6 == 2)	//Right
	{
		settingStr = "Setting Key: Right...";
	}
if (global.mmY6 == 3)	//Left
	{
		settingStr = "Setting Key: Left...";
	}
if (global.mmY6 == 4)	//Jump
	{
		settingStr = "Setting Key: Jump...";
	}
if (global.mmY6 == 5)	//Attack
	{
		settingStr = "Setting Key: Attack...";
	}
if (global.mmY6 == 6)	//Dash
	{
		settingStr = "Setting Key: Dash...";
	}
if (global.mmY6 == 7)	//Start
	{
		settingStr = "Setting Key: Start...";
	}
if (global.mmY6 == 8)	//lBumper	
	{
		settingStr = "Setting Key: lBumper...";
	}
if (global.mmY6 == 9)	//rBumper
	{
		settingStr = "Setting Key: rBumper...";
	}
	
if (global.mmY6 == 10)	//Gamepad/Keyboard
	{
		if (global.keyOrGamepad == "Keyboard")
		{
			var connected = scr_isGamepadConnected();
			if (connected == true)
			{
				global.keyOrGamepad = "Gamepad";
				scr_AllKeysDefault();
			}
		}
		else if (global.keyOrGamepad == "Gamepad")
		{
			global.keyOrGamepad = "Keyboard";
			scr_AllKeysDefault();
		}
	
	}
	
if (global.mmY6 != 10)	
{
global.countdownString = settingStr;
global.countdownButton = true;
instance_create_depth(0,0,-100,obj_menuTimer);
}

