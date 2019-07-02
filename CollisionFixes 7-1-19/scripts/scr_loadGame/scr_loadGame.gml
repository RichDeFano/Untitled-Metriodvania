if (file_exists("gameSave.sav"))
{
var _wrapper = scr_loadJSONFromFile("gameSave.sav")
	var _list = _wrapper[? "ROOT"]
	
	for (var i = 0; i < ds_list_size(_list); i++)
	{
	var _map = _list[| i];

//Bosses Defeated
global.bossDefeated1 = _map[? "0"];
global.bossDefeated2 = _map[? "1"];
global.bossDefeated3 = _map[? "2"];
global.bossDefeated4 = _map[? "3"];
global.bossDefeated5 = _map[? "4"];

//Hp Upgrades
global.hpUnlocked1 = _map[? "5"];
global.hpUnlocked2 = _map[? "6"];
global.hpUnlocked3 = _map[? "7"];
global.hpUnlocked4 = _map[? "8"];
global.hpUnlocked5 = _map[? "9"];
global.hpUnlocked6 = _map[? "10"];
global.hpUnlocked7 = _map[? "11"];
global.hpUnlocked8 = _map[? "12"];
global.hpUnlocked9 = _map[? "13"];
global.hpUnlocked10 = _map[? "14"];
global.hpUnlocked11 = _map[? "15"];
global.hpUnlocked12 = _map[? "16"];
global.hpUnlocked13 = _map[? "17"];
global.hpUnlocked14 = _map[? "18"];
global.hpUnlocked15 = _map[? "19"];
global.hpUnlocked16 = _map[? "20"];
global.hpUnlocked17 = _map[? "21"];
global.hpUnlocked18 = _map[? "22"];
global.hpUnlocked19 = _map[? "23"];
global.hpUnlocked20 = _map[? "24"];

//Tomes
global.tome1Unlocked = _map[? "25"];
global.tome2Unlocked = _map[? "26"];
global.tome3Unlocked = _map[? "27"];
global.tome4Unlocked = _map[? "28"];
global.tome5Unlocked = _map[? "29"];
global.tome6Unlocked = _map[? "30"];
global.tome7Unlocked = _map[? "31"];
global.tome8Unlocked = _map[? "32"];
global.tome9Unlocked = _map[? "33"];
global.tome10Unlocked = _map[? "34"];

//Collectibles
global.money = _map[? "35"];

//Ability Unlocks
global.dodgeUnlocked = _map[? "36"];
global.wallJumpUnlocked = _map[? "37"];
global.swordUnlocked = _map[? "38"];
global.pjumpUnlocked = _map[? "39"];
global.armorUnlocked = _map[? "40"];
global.saveWarpUnlocked = _map[? "41"];
global.doubleJumpUnlocked = _map[? "42"];
global.mmUpgradeUnlocked = _map[? "43"];
global.orbTrackUnlocked = _map[? "44"];
global.magnetMoneyUnlocked = _map[? "45"];
global.dashCDUnlocked = _map[? "46"];

//Solar and Lunar Armor Unlocks
global.swordLightUnlocked = _map[? "47"];
global.swordDarkUnlocked = _map[? "48"];
global.armorLightUnlocked = _map[? "49"];
global.armorDarkUnlocked = _map[? "50"];
global.dodgeLightUnlocked = _map[? "51"];
global.dodgeDarkUnlocked = _map[? "52"];
global.lightDarkUnlocked = _map[? "53"];

//Solar and Lunar Orb
global.sunOrbsGained = _map[? "54"];
global.totalSunOrbsUnlocked = _map[? "55"];
global.totalMoonOrbsUnlocked = _map[? "56"];
global.moonOrbsGained = _map[? "57"];
global.moonOrb1Unlocked = _map[? "58"];
global.moonOrb2Unlocked = _map[? "59"];
global.moonOrb3Unlocked = _map[? "60"];
global.sunOrb1Unlocked = _map[? "61"];
global.sunOrb2Unlocked = _map[? "62"];
global.sunOrb3Unlocked = _map[? "63"];

//Controls
global.upStr = _map[? "64"];
global.downStr = _map[? "65"];
global.rightStr = _map[? "66"];
global.leftStr = _map[? "67"];
global.jumpStr = _map[? "68"];
global.attackStr = _map[? "69"];
global.dashStr = _map[? "70"];
global.startStr = _map[? "71"];
global.lStr = _map[? "72"];
global.rStr = _map[? "73"];

//Map Location
global.lastRoomInY = _map[? "74"];
global.lastRoomInX = _map[? "75"];
global.zone = _map[? "81"];

//Gemstone Cavern Boss Key/Door
global.moonDungeon1BossKey = _map[? "76"];
global.moonDungeon1BossDoor= _map[? "77"];

//Gemstone Cavern Keys and Doors
var tempKey = _map[? "78"];
if (ds_map_exists(_map,"78"))
{
	var tempKeyList = ds_list_create();
	ds_list_read(tempKeyList, tempKey);
	var size = ds_list_size(tempKeyList);
	for (var g = 0; g < size; g++)
	{
		var newValue = ds_list_find_value(tempKeyList,g);
		global.moonDungeon1Keys[g] = newValue;
	}
}

var tempDoor = _map[? "79"];
if (ds_map_exists(_map,"79"))
{
	var tempDoorList = ds_list_create();
	ds_list_read(tempDoorList, tempDoor);
	var size = ds_list_size(tempDoorList);
	for (var f = 0; f < size; f++)
	{
		var newValue = ds_list_find_value(tempDoorList,f);
		global.moonDungeon1Doors[f] = newValue;
	}
}

//global.moonDungeon1Doors = _map[? "79"];

//Minimap Data
var tempDS = _map[? "80"];
if (ds_map_exists(_map,"80"))
{
	var tempGrid = ds_grid_create(global.mapSizeY,global.mapSizeX);
	ds_grid_read(tempGrid,tempDS);
	global.mapGrid = scr_loadMiniMap(tempGrid);
}

//More Bosses+Minibosses
global.bossDefeated6 = _map[? "82"];
global.bossDefeated7 = _map[? "83"];
global.bossDefeated8 = _map[? "84"];
global.bossDefeated9 = _map[? "85"];
global.bossDefeated10 = _map[? "86"];

global.minibossDefeated1 = _map[? "87"];
global.minibossDefeated2 = _map[? "88"];
global.minibossDefeated3 = _map[? "89"];
global.minibossDefeated4 = _map[? "90"];
global.minibossDefeated5 = _map[? "91"];
global.minibossDefeated6 = _map[? "92"];
global.minibossDefeated7 = _map[? "93"];
global.minibossDefeated8 = _map[? "94"];
global.minibossDefeated9 = _map[? "95"];
global.minibossDefeated10 = _map[? "96"];

global.hookshotUnlocked = _map[? "97"];

/////////////////////////////////////////////////////////////////////////////////////////////////

	}
ds_map_destroy(_wrapper);
}

else
{
///Bosses and Minibosses
global.bossDefeated1 = false;
global.bossDefeated2 = false;
global.bossDefeated3 = false;
global.bossDefeated4 = false;
global.bossDefeated5 = false;
global.bossDefeated6 = false;
global.bossDefeated7 = false;
global.bossDefeated8 = false;
global.bossDefeated9 = false;
global.bossDefeated10 = false;

global.minibossDefeated1 = false;
global.minibossDefeated2 = false;
global.minibossDefeated3 = false;
global.minibossDefeated4 = false;
global.minibossDefeated5 = false;
global.minibossDefeated6 = false;
global.minibossDefeated7 = false;
global.minibossDefeated8 = false;
global.minibossDefeated9 = false;
global.minibossDefeated10 = false;

//Hp Upgrades
global.hpUnlocked1 = false;
global.hpUnlocked2 = false;
global.hpUnlocked3 = false;
global.hpUnlocked4 = false;
global.hpUnlocked5 = false;
global.hpUnlocked6 = false;
global.hpUnlocked7 = false;
global.hpUnlocked8 = false;
global.hpUnlocked9 = false;
global.hpUnlocked10 = false;
global.hpUnlocked11 = false;
global.hpUnlocked12 = false;
global.hpUnlocked13 = false;
global.hpUnlocked14 = false;
global.hpUnlocked15 = false;
global.hpUnlocked16 = false;
global.hpUnlocked17 = false;
global.hpUnlocked18 = false;
global.hpUnlocked19 = false;
global.hpUnlocked20 = false;

//Tomes
global.tome1Unlocked = false;
global.tome2Unlocked = false;
global.tome3Unlocked = false;
global.tome4Unlocked = false;
global.tome5Unlocked = false;
global.tome6Unlocked = false;
global.tome7Unlocked = false;
global.tome8Unlocked = false;
global.tome9Unlocked = false;
global.tome10Unlocked = false;

//Collectibles
global.money = 0;

//Ability Unlocks
global.dodgeUnlocked = false;
global.wallJumpUnlocked = false;
global.swordUnlocked = false;
global.pjumpUnlocked = false;
global.armorUnlocked = false;
global.saveWarpUnlocked = false;
global.doubleJumpUnlocked = false;
global.mmUpgradeUnlocked = false;
global.orbTrackUnlocked = false;
global.magnetMoneyUnlocked = false;
global.dashCDUnlocked = false;

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
global.totalSunOrbsUnlocked = 0;
global.totalMoonOrbsUnlocked = 0;
global.moonOrbsGained = 0;
global.moonOrb1Unlocked = false;
global.moonOrb2Unlocked = false;
global.moonOrb3Unlocked = false;
global.sunOrb1Unlocked = false;
global.sunOrb2Unlocked = false;
global.sunOrb3Unlocked = false;

//Controls
global.upStr = "Up";
global.downStr = "Down";
global.rightStr = "Right";
global.leftStr = "Left";
global.jumpStr = "C";
global.attackStr = "Z";
global.dashStr = "X";
global.startStr = "Enter";
global.lStr = "A";
global.rStr = "S";

//Money
global.money = 0;

//map
global.lastRoomInY = 3;
global.lastRoomInX = 3;
global.zone = "TestZone";


//Gemstone Cavern Keys and Doors
global.moonDungeon1BossKey = 0;
global.moonDungeon1BossDoor = 0;
for (i = 0; i < global.moonD1KTotal; i++)
{
	global.moonDungeon1Keys[i] = 0;
	global.moonDungeon1Doors[i] = 0;
}

//Minimap Data
for (var i = 0; i <= global.mapSizeY; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=global.mapSizeX;j++) ////J = X = 7 Columns
	{
	global.mapGrid[i,j] = 0;
	}
}
global.hookshotUnlocked = false;


}
