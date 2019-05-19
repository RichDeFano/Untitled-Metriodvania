scr_checkOrbAmt();
draw_self();
//////////////////////////////////////////////////////
//Sun Orb Counter Visualization						//
/////////////////////////////////////////////////////

if ((global.totalSunOrbsUnlocked - global.sunOrbsGained) == 0)										//Draw all unlocked orbs
			{
				var j;
				for(j=0;j<global.totalSunOrbsUnlocked;j++)
					{draw_sprite(spr_miniOrb,1,x+112 + (j*9),y+18);}
			}
else if ((global.totalSunOrbsUnlocked - global.sunOrbsGained) == 1)									//Draw the last orb gray
			{
				var j;
				for(j=0;j<global.totalSunOrbsUnlocked-1;j++)
					{draw_sprite(spr_miniOrb,1,x+112 + (j*9),y+18);}
				draw_sprite(spr_miniOrbGray,1,x+112 +((global.totalSunOrbsUnlocked-1)*9),y+18);
			}
else if ((global.totalSunOrbsUnlocked - global.sunOrbsGained) == 2)									//Draw the last two orbs gray.
			{
				var j;
				for(j=0;j<global.totalSunOrbsUnlocked-2;j++)
					{draw_sprite(spr_miniOrb,1,x+112 + (j*9),y+18);}
				draw_sprite(spr_miniOrbGray,1,x+112 +((global.totalSunOrbsUnlocked-1)*9),y+18);
				draw_sprite(spr_miniOrbGray,1,x+112 +((global.totalSunOrbsUnlocked-2)*9),y+18);
			}
else				//Draw all the orbs gray.
			{
				var j;
				for(j=0;j<global.totalSunOrbsUnlocked;j++)
					{draw_sprite(spr_miniOrbGray,1,x+112 + (j*9),y+18);}
			}

//////////////////////////////////////////////////////
//Moon Orb Counter Visualization					//
/////////////////////////////////////////////////////

if ((global.totalMoonOrbsUnlocked - global.moonOrbsGained) == 0)									//Draw all unlocked orbs
			{
				var j;
				for(j=0;j<global.totalMoonOrbsUnlocked;j++)
					{draw_sprite(spr_miniOrb,0,x+112 + (j*9),y+27);}
			}
else if ((global.totalMoonOrbsUnlocked - global.moonOrbsGained) == 1)								//Draw the last orb gray
			{
				var j;
				for(j=0;j<global.totalMoonOrbsUnlocked-1;j++)
					{draw_sprite(spr_miniOrb,0,x+112 + (j*9),y+27);}
				draw_sprite(spr_miniOrbGray,0,x+112 +((global.totalMoonOrbsUnlocked-1)*9),y+27);
			}
else if ((global.totalMoonOrbsUnlocked - global.moonOrbsGained) == 2)								//Draw the last two orbs gray.
			{
				var j;
				for(j=0;j<global.totalMoonOrbsUnlocked-2;j++)
					{draw_sprite(spr_miniOrb,0,x+112 + (j*9),y+27);}
				draw_sprite(spr_miniOrbGray,0,x+112 +((global.totalMoonOrbsUnlocked-1)*9),y+27);
				draw_sprite(spr_miniOrbGray,0,x+112 +((global.totalMoonOrbsUnlocked-2)*9),y+27);
			}
else																								//Draw all the orbs gray.
			{
				var j;
				for(j=0;j<global.totalMoonOrbsUnlocked;j++)
					{draw_sprite(spr_miniOrbGray,0,x+112 + (j*9),y+27);}
			}
//////////////////////////////////////////////////////
//Moon Orb Equipped Visualization					//
/////////////////////////////////////////////////////
//Dark Armor
	if (global.armorDarkUnlocked == true)
		{draw_sprite(spr_bigOrb,2,x+171,y+69)}
	else
		{draw_sprite(spr_bigOrb,0,x+171,y+69)}
//Dark Sword
	if (global.swordDarkUnlocked == true)
		{draw_sprite(spr_bigOrb,2,x+171,y+98)}
	else
		{draw_sprite(spr_bigOrb,0,x+171,y+98)}
//Dark Movement
	if (global.dodgeDarkUnlocked == true)
		{draw_sprite(spr_bigOrb,2,x+171,y+127)}
	else
		{draw_sprite(spr_bigOrb,0,x+171,y+127)}
//////////////////////////////////////////////////////
//Sun Orb Equipped Visualization					//
/////////////////////////////////////////////////////
//Light Armor
	if (global.armorLightUnlocked == true)
		{draw_sprite(spr_bigOrb,1,x+79,y+69)}
	else
		{draw_sprite(spr_bigOrb,0,x+79,y+69)}
//Light Sword
	if (global.swordLightUnlocked == true)
		{draw_sprite(spr_bigOrb,1,x+79,y+98)}
	else
		{draw_sprite(spr_bigOrb,0,x+79,y+98)}
//Light Movement
	if (global.dodgeLightUnlocked == true)
		{draw_sprite(spr_bigOrb,1,x+79,y+127)}
	else
		{draw_sprite(spr_bigOrb,0,x+79,y+127)}
//////////////////////////////////////////////////////
//Player guide Visuals								//
/////////////////////////////////////////////////////	
//Sword
if ((global.swordDarkUnlocked == true) && (global.lightDarkUnlocked == false))
	{draw_sprite(spr_swordState,1,x+104,y+92);}
else if ((global.swordLightUnlocked == true) && (global.lightDarkUnlocked == false))
	{draw_sprite(spr_swordState,2,x+104,y+92);}
else if (global.lightDarkUnlocked == true)
	{draw_sprite(spr_swordState,3,x+104,y+92);}
else
	{draw_sprite(spr_swordState,0,x+104,y+92);}
//Movement
if ((global.dodgeDarkUnlocked == true) && (global.lightDarkUnlocked == false))
	{draw_sprite(spr_movementState,1,x+139,y+106);}
else if ((global.dodgeLightUnlocked == true) && (global.lightDarkUnlocked == false))
	{draw_sprite(spr_movementState,2,x+139,y+106);}
else if (global.lightDarkUnlocked == true)
	{draw_sprite(spr_movementState,3,x+139,y+106);}
else
	{draw_sprite(spr_movementState,0,x+139,y+106);}
//Armor
if ((global.armorDarkUnlocked == true) && (global.lightDarkUnlocked == false))
	{draw_sprite(spr_armorState,1,x+122,y+66);}
else if ((global.armorLightUnlocked == true) && (global.lightDarkUnlocked == false))
	{draw_sprite(spr_armorState,2,x+122,y+66);}
else if (global.lightDarkUnlocked == true)
	{draw_sprite(spr_armorState,3,x+122,y+66);}
else
	{draw_sprite(spr_armorState,0,x+122,y+66);}
	

	


