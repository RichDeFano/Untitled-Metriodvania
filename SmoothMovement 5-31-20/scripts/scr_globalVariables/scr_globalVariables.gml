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

////DUNGEON TOOLS
var i = 0;

//Gemstone Cavern
global.moonD1KTotal = 2;
global.teleportZone = "TestZone";
global.debugNumb = 0;

global.mapSizeX = 50; //33
global.mapSizeY = 50; //29
global.mapOffsetX = 0;
global.mapOffsetY = 0;
global.teleportTimer = false;
global.justTeleported = false;

global.zoneWarping = false;
global.canInteractTeleport = false;
/////////
global.destX = 0;
global.destY = 0;
global.showZone = false;
global.testVar = 0;

global.saveOn = 0;
global.keyOrGamepad = "Keyboard";
//Boss Stuff
global.inFight = false;


//Minimap
global.isSave = false;
global.isBoss = false;
global.isBossCleared = false;
global.lastRoomInX = 0;
global.lastRoomInY = 0;
global.mmX = 0;
global.mmY = 0;
global.mmX2 = 0;
global.mmY2 = 0;
global.mmX3 = 0;
global.mmY3 = 0;
global.mmX4 = 0;
global.mmY4 = 0;
global.mmX5 = 0;
global.mmY5 = 0;
global.mmX6 = 0;
global.mmY6 = 0;
global.mmY7 = 0;

//Randoms
global.roomdark = false;
global.inText = false;
global.pause = false;
global.atShrine = false;
global.canInteractShrine = false;
global.canteleport = false;

//Map and Movement
global.zone = "";
global.canInteract = false;
global.teleporting = false;
global.roomGoto = "";
global.inZone = "";
global.mapMoving = false;
global.tempGrav = 0.2;
global.pauseScreenOn = 0;
global.menuLayer2 = false;
global.controlChange = false;
global.countdownButton = false;
global.contdownString = "";
global.newKey = vk_enter;


//Weather
global.weatherRaining = false;
global.weatherRainingHard = false;
global.weatherSnowing = false;
global.weatherSnowingHard = false;
global.light = noone;

//Pause Menu
global.upgradesGotten = 0;
global.heartsGotten = 0;
global.tomesGotten = 0;
global.bossesKilled = 0;

//Status Effects
global.statusBurning = false;
global.statusPoison =  false;
global.statusDazed =  false;
global.statusCursed =  false;
global.statusFrozen =  false;
global.statusSlowed =  false;
global.statusOrbCursed = false;
global.statusEffects = 0;


global.slowedAlready = false;
global.dazedOldLeft = 0;
global.dazedOldright = 0;
//StatusCounters
global.counter1 = 0;
global.counter2 = 0;
global.counter3 = 0;
global.counter4 = 0;
global.counter5 = 0;
global.counter6 = 0;
global.counter7 = 0;
global.haveSet1 = false;
global.haveSet2 = false;
global.haveSet3 = false;
global.haveSet4 = false;
global.haveSet5 = false;
global.haveSet6 = false;
global.haveSet7 = false;
global.haveSet8 = false;

//Ore Mine
global.inHotSpring = false;
global.darknessLevel = 2;