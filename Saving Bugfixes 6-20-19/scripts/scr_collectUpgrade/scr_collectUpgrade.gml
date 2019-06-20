/*
Dodge Roll = 1
Wall Climb = 2
Sword = 3
Armor = 4
Double Jump = 5
//
Sword
	Light = 6
	Dark = 7
Armor
	Light = 8
	Dark = 9
Dodge Roll
	Light = 10
	Dark = 11
Movement
	Light = 12
	Dark = 13
All upgrades = 14?
*/
//if (collision_circle(x,y,12,obj_Upgrade,false,true))
//{
///////////////////////////////////////////////GETTING BASIC UPGRADES//////////////////////////
	if (upgradenumber == 1)	
	{
	global.dodgeUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the dodge upgrade.";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	
	else if (upgradenumber == 2)	
	{
	global.wallJumpUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the wall jump upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	
	else if (upgradenumber == 3)	
	{
	global.swordUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the sword upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
			
		}
	}
	
	else if (upgradenumber == 4)	
	{
	global.pjumpUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the jumpblock upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	
	else if (upgradenumber == 5)	
	{
	global.doubleJumpUnlocked = true;
	obj_Player.jumpsmax = 2;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the double jump upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	
	else if (upgradenumber == 6)	
	{
	global.saveWarpUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the save warp upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	else if (upgradenumber == 7)	
	{
	global.mmUpgradeUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the minimap upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	else if (upgradenumber == 8)	
	{
	global.orbTrackUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "Your map now shows the locations of orbs";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
		else if (upgradenumber == 9)	
	{
	global.magnetMoneyUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the magnet money upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
		else if (upgradenumber == 10)	
	{
	global.dashCDUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got the dash cd upgrade";
			myTextBox.creator = self;
			myTextBox.name = "Upgrade";
		}
	}
	
//}
/////////////////////////////////GETTING SUN AND MOON ORBS///////////////////////////
	else if (upgradenumber == 99)
	{
		if ((sunOrbNumber == 1) ||	(sunOrbNumber == 2) ||	(sunOrbNumber == 3))
		{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
				myTextBox.text[0] = "Youve found a solar orb!";
				myTextBox.creator = self;
				myTextBox.name = "Solar Orb";
				global.sunOrbsGained += 1;
				if (sunOrbNumber == 1)
					{global.sunOrb1Unlocked = true;}
				if (sunOrbNumber == 2)
					{global.sunOrb2Unlocked = true;}
				if (sunOrbNumber == 3)
					{global.sunOrb3Unlocked = true;}
			}
		}
	}
	else if (upgradenumber == 100)
	{
		if ((moonOrbNumber == 1) || (moonOrbNumber == 2) || (moonOrbNumber == 3))
		{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
				myTextBox.text[0] = "Youve found a lunar orb!";
				myTextBox.creator = self;
				myTextBox.name = "Lunar Orb";
				global.moonOrbsGained += 1;
				if (moonOrbNumber == 1)
					{global.moonOrb1Unlocked = true;}
				if (moonOrbNumber == 2)
					{global.moonOrb2Unlocked = true;}
				if (moonOrbNumber == 3)
					{global.moonOrb3Unlocked = true;}
			}
		}
	}
///////////////////////////////////SOLAR SET/////////////////////////////////////////////////////////////	
	else if (upgradenumber == 101)	
	{
		global.dodgeLightUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got a movement upgrade from the solar set";
			myTextBox.creator = self;
			myTextBox.name = "Solar Upgrade";
		}
	}
	
	else if (upgradenumber == 102)	
	{
		global.armorLightUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got an armor upgrade from the solar set";
			myTextBox.creator = self;
			myTextBox.name = "Solar Upgrade";
		}
	}
	
	else if (upgradenumber == 103)	
	{
		global.swordLightUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got a weapon upgrade from the solar set";
			myTextBox.creator = self;
			myTextBox.name = "Solar Upgrade";
		}
	}	
///////////////////////////////////////LUNAR SET/////////////////////////////////////////////////////////	
	else if (upgradenumber == 104)	
	{
		global.dodgeDarkUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got a movement upgrade from the lunar set";
			myTextBox.creator = self;
			myTextBox.name = "Lunar Upgrade";
		}
	}
	
	else if (upgradenumber == 105)	
	{
		global.armorDarkUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got an armor upgrade from the lunar set";
			myTextBox.creator = self;
			myTextBox.name = "Lunar Upgrade";
		}
	}
	
	else if (upgradenumber == 106)	
	{
		global.swordDarkUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You got a weapon upgrade from the lunar set";
			myTextBox.creator = self;
			myTextBox.name = "Lunar Upgrade";
		}
	}
	
		else if (upgradenumber == 107)	
	{
		global.lightDarkUnlocked = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "Youve unlocked the dual armor";
			myTextBox.creator = self;
			myTextBox.name = "Ancient Upgrade";
		}
	}
//////////////KEYS
else if (upgradenumber == 108)	
	{
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You found a Key! It can only be used in this dungeon.";
			myTextBox.creator = self;
			myTextBox.name = "Dungeon Key";
		}
	}
else if (upgradenumber == 109)	
	{
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text[0] = "You found a large key! What it opens is a mystery.";
			myTextBox.creator = self;
			myTextBox.name = "Big Key";
		}
	}


	
