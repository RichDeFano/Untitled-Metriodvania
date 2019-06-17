/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
if (global.atShrine == true)
{
visible = true;
////////////////////Movement of the cursor
if (canGo == true)
{
	
if ((key_right) && (x < startingX+92))
	{
		x += 92;
		canGo = false;
		alarm[0] = 4;
	}

else if (-(key_left) && (x > startingX))
	{
		x -= 92;
		canGo = false;
		alarm[0] = 4;
	}
	
else if ((key_up) && (y > startingY))
	{
		y -= 29;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && ( y < startingY+58))
	{
		y += 29;
		canGo = false;
		alarm[0] = 4;
	}
}
////////////////////////////Orb Selection
if ((key_attack) && (canClick == true))
{
	/////////////////////////////////////
	//Sun Orbs///////////////////////////
	/////////////////////////////////////
	if (x == startingX)			///Left Side - Sun Orbs
		{
			//First Orb -  Armor(Sun)
			if (y == startingY)		
			{
				if ((global.armorLightUnlocked == false) && (global.sunOrbsGained > 0))	
				{
					global.armorLightUnlocked = true;
					global.sunOrbsGained -= 1;
					canClick = false;
					alarm[1] = 5;
				}
				else if (global.armorLightUnlocked == true)
				{
					global.armorLightUnlocked = false;
					global.sunOrbsGained += 1;
					canClick = false;
					alarm[1] = 5;
				}			
			}
			//Second Orb -  Sword(Sun)
			if (y == startingY+29)	
			{
				if ((global.swordLightUnlocked == false) && (global.sunOrbsGained > 0))	
				{
					global.swordLightUnlocked = true;
					global.sunOrbsGained -= 1;
					canClick = false;
					alarm[1] = 5;
				}
				else if (global.swordLightUnlocked == true)
				{
					global.swordLightUnlocked = false;
					global.sunOrbsGained += 1;
					canClick = false;
					alarm[1] = 5;
				}	
			}
			//Third Orb -  Dodge(Sun)
			if (y == startingY+58)	
			{
				if ((global.dodgeLightUnlocked == false) && (global.sunOrbsGained > 0))	
				{
					global.dodgeLightUnlocked = true;
					global.sunOrbsGained -= 1;
					canClick = false;
					alarm[1] = 5;
				}
				else if (global.dodgeLightUnlocked == true)
				{
					global.dodgeLightUnlocked = false;
					global.sunOrbsGained += 1;
					canClick = false;
					alarm[1] = 5;
				}	
			}
		}
	/////////////////////////////////////
	//Moon Orbs//////////////////////////
	/////////////////////////////////////
	if (x > startingX)
		{
			//First Orb -  Armor(Sun)
			if (y == startingY)		
			{
				if ((global.armorDarkUnlocked == false) && (global.moonOrbsGained > 0))	
				{
					global.armorDarkUnlocked = true;
					global.moonOrbsGained -= 1;
					canClick = false;
					alarm[1] = 5;
				}
				else if (global.armorDarkUnlocked == true)
				{
					global.armorDarkUnlocked = false;
					global.moonOrbsGained += 1;
					canClick = false;
					alarm[1] = 5;
				}			
			}
			//Second Orb -  Sword(Sun)
			if (y == startingY+29)	
			{
				if ((global.swordDarkUnlocked == false) && (global.moonOrbsGained > 0))	
				{
					global.swordDarkUnlocked = true;
					global.moonOrbsGained -= 1;
					canClick = false;
					alarm[1] = 5;
				}
				else if (global.swordDarkUnlocked == true)
				{
					global.swordDarkUnlocked = false;
					global.moonOrbsGained += 1;
					canClick = false;
					alarm[1] = 5;
				}	
			}
			//Third Orb -  Dodge(Sun)
			if (y == startingY+58)	
			{
				if ((global.dodgeDarkUnlocked == false) && (global.moonOrbsGained > 0))	
				{
					global.dodgeDarkUnlocked = true;
					global.moonOrbsGained -= 1;
					canClick = false;
					alarm[1] = 5;
				}
				else if (global.dodgeDarkUnlocked == true)
				{
					global.dodgeDarkUnlocked = false;
					global.moonOrbsGained += 1;
					canClick = false;
					alarm[1] = 5;
				}	
			}
			
			
		}



}

}

else
{ visible = false;}