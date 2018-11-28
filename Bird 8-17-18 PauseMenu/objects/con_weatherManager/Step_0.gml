/// @description Insert description here
// You can write your code in this editor
 var tempTime,tempTime2;
 
if (keyboard_check_released(ord("1")))
{
global.weatherRaining = false;
global.weatherRainingHard = false;
global.weatherSnowing = false;
global.weatherSnowingHard = false;
}

if (keyboard_check_released(ord("2")))
{
global.weatherRaining = true;
global.weatherRainingHard = false;
global.weatherSnowing = false;
global.weatherSnowingHard = false;
}

if (keyboard_check_released(ord("3")))
{
global.weatherRaining = false;
global.weatherRainingHard = true;
global.weatherSnowing = false;
global.weatherSnowingHard = false;
}

if (keyboard_check_released(ord("4")))
{
global.weatherRaining = false;
global.weatherRainingHard = false;
global.weatherSnowing = true;
global.weatherSnowingHard = false;
}

if (keyboard_check_released(ord("5")))
{
global.weatherRaining = false;
global.weatherRainingHard = false;
global.weatherSnowing = false;
global.weatherSnowingHard = true;
}




if (global.weatherRainingHard == true)
{
	if (alarm[0] <= 0)
	{
		tempTime = random_range(100,2000);
		tempTime2 = ((2*tempTime)/3);
		alarm[0] = tempTime;
		alarm[1] = tempTime2;
		
		}
	
	if (haveCreatedDarkness == false)
	{
		haveCreatedDarkness = true;
		instance_create_layer(x,y,"Text",con_lightManager);
	}
}


if (global.weatherRainingHard == false)
{
	haveCreatedDarkness = false;
	with (con_lightManager)
	{
		if (instance_number(con_lightManager) > 1)
			{
				instance_destroy();
			}
		
	};
}
