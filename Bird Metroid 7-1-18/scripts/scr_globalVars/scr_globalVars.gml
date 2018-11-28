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

//Ability Unlocks
global.dodgeUnlocked = false;
global.wallJumpUnlocked = false;
global.swordUnlocked = false;
global.pjumpUnlocked = false;
global.armorUnlocked = false;
global.saveWarpUnlocked = false;
global.doubleJumpUnlocked = false;

//Solar and Lunar Armor Unlocks
global.swordLightUnlocked = false;
global.swordDarkUnlocked = false;
global.armorLightUnlocked = false;
global.armorDarkUnlocked = false;
global.dodgeLightUnlocked = false;
global.dodgeDarkUnlocked = false;
global.lightDarkUnlocked = false;

//Solar and Lunar Orbs
global.sunOrbsGained = 0;
global.moonOrbsGained = 0;
global.moonOrb1Unlocked = false;
global.moonOrb2Unlocked = false;
global.moonOrb3Unlocked = false;
global.sunOrb1Unlocked = false;
global.sunOrb2Unlocked = false;
global.sunOrb3Unlocked = false;
//Minimap
global.isSave = false;
global.isBoss = false;
global.isBossCleared = false;
global.mmX = 0;
global.mmY = 0;

//Randoms
global.roomdark = false;
global.inText = false;
global.zone = "TempZone";
global.canInteract = false;