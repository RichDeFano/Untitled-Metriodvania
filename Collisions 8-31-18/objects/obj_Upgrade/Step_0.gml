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
if (global.inText == false)
{
	
if ((upgradenumber == 1) && (global.dodgeUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 2) && (global.wallJumpUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 3) && (global.swordUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 4) && (global.pjumpUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 5) && (global.doubleJumpUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 6) && (global.saveWarpUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 7) && (global.mmUpgradeUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 8) && (global.orbTrackUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 9) && (global.magnetMoneyUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 10) && (global.dashCDUnlocked == true))
{
	instance_destroy();
}

///////////////////////

if ((upgradenumber == 101) && (global.dodgeLightUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 102) && (global.armorLightUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 103) && (global.swordLightUnlocked == true))
{
	instance_destroy();
}
if ((upgradenumber == 104) && (global.dodgeDarkUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 105) && (global.armorDarkUnlocked == true))
{
	instance_destroy();
}

if ((upgradenumber == 106) && (global.swordDarkUnlocked == true))
{
	instance_destroy();
}



}