var totalMoonOrbs = 0;
var totalSunOrbs = 0;

if (global.moonOrb1Unlocked == true)
{
	totalMoonOrbs += 1;
}

if (global.moonOrb2Unlocked == true)
{
	totalMoonOrbs += 1;
}

if (global.moonOrb3Unlocked == true)
{
	totalMoonOrbs += 1;
}
////////
if (global.sunOrb1Unlocked == true)
{
	totalSunOrbs += 1;
}

if (global.sunOrb2Unlocked == true)
{
	totalSunOrbs += 1;
}

if (global.sunOrb3Unlocked == true)
{
	totalSunOrbs += 1;
}

global.totalSunOrbsUnlocked = totalSunOrbs;
global.totalMoonOrbsUnlocked = totalMoonOrbs;
