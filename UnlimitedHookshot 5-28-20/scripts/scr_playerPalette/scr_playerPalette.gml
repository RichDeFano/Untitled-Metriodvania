
/*
regular+regular = 1
light+regular = 2
dark+regular = 3

regular+light = 4
light+light = 5
dark+light = 6

regular+dark = 7
light+dark = 8
dark+dark = 9
*/

if (global.lightDarkUnlocked == true)
{
current_pal = 9
}
else
{
if ((global.swordLightUnlocked == false) && (global.swordDarkUnlocked == false))
{
	if ((global.armorLightUnlocked == false) && (global.armorDarkUnlocked == false))
	{
		current_pal = 0;
	}
	
	if ((global.armorLightUnlocked == true) && (global.armorDarkUnlocked == false))
	{
		current_pal = 1;
	}
	
	if ((global.armorLightUnlocked == false) && (global.armorDarkUnlocked == true))
	{
		current_pal = 2;
	}
	
}

else if ((global.swordLightUnlocked == true) && (global.swordDarkUnlocked == false))
{
	if ((global.armorLightUnlocked == false) && (global.armorDarkUnlocked == false))
	{
		current_pal = 3;
	}
	
	if ((global.armorLightUnlocked == true) && (global.armorDarkUnlocked == false))
	{
		current_pal = 4;
	}
	
	if ((global.armorLightUnlocked == false) && (global.armorDarkUnlocked == true))
	{
		current_pal = 5;
	}

}

else if ((global.swordLightUnlocked == false) && (global.swordDarkUnlocked == true))
{
	if ((global.armorLightUnlocked == false) && (global.armorDarkUnlocked == false))
	{
		current_pal = 6;
	}
	
	if ((global.armorLightUnlocked == true) && (global.armorDarkUnlocked == false))
	{
		current_pal = 7;
	}
	
	if ((global.armorLightUnlocked == false) && (global.armorDarkUnlocked == true))
	{
		current_pal = 8;
	}

}
}