var _gameOn = string_format(global.saveOn,1,1);
var _rootList = ds_list_create();
	var _map = ds_map_create();
	ds_list_add(_rootList,_map);
	ds_list_mark_as_map(_rootList,ds_list_size(_rootList)-1);
//Add Data
//Bosses Defeated
ds_map_add(_map,"0",global.bossDefeated1);
ds_map_add(_map,"1",global.bossDefeated2);
ds_map_add(_map,"2",global.bossDefeated3);
ds_map_add(_map,"3",global.bossDefeated4);
ds_map_add(_map,"4",global.bossDefeated5);

//Hp Upgrades
ds_map_add(_map,"5",global.hpUnlocked1);
ds_map_add(_map,"6",global.hpUnlocked2);
ds_map_add(_map,"7",global.hpUnlocked3);
ds_map_add(_map,"8",global.hpUnlocked4);
ds_map_add(_map,"9",global.hpUnlocked5);
ds_map_add(_map,"10",global.hpUnlocked6);
ds_map_add(_map,"11",global.hpUnlocked7);
ds_map_add(_map,"12",global.hpUnlocked8);
ds_map_add(_map,"13",global.hpUnlocked9);
ds_map_add(_map,"14",global.hpUnlocked10);
ds_map_add(_map,"15",global.hpUnlocked11);
ds_map_add(_map,"16",global.hpUnlocked12);
ds_map_add(_map,"17",global.hpUnlocked13);
ds_map_add(_map,"18",global.hpUnlocked14);
ds_map_add(_map,"19",global.hpUnlocked15);
ds_map_add(_map,"20",global.hpUnlocked16);
ds_map_add(_map,"21",global.hpUnlocked17);
ds_map_add(_map,"22",global.hpUnlocked18);
ds_map_add(_map,"23",global.hpUnlocked19);
ds_map_add(_map,"24",global.hpUnlocked20);

//Tomes
ds_map_add(_map,"25",global.tome1Unlocked);
ds_map_add(_map,"26",global.tome2Unlocked);
ds_map_add(_map,"27",global.tome3Unlocked);
ds_map_add(_map,"28",global.tome4Unlocked);
ds_map_add(_map,"29",global.tome5Unlocked);
ds_map_add(_map,"30",global.tome6Unlocked);
ds_map_add(_map,"31",global.tome7Unlocked);
ds_map_add(_map,"32",global.tome8Unlocked);
ds_map_add(_map,"33",global.tome9Unlocked);
ds_map_add(_map,"34",global.tome10Unlocked);

//Collectibles
ds_map_add(_map,"35",global.money);

//Ability Unlocks
ds_map_add(_map,"36",global.dodgeUnlocked);
ds_map_add(_map,"37",global.wallJumpUnlocked);
ds_map_add(_map,"38",global.swordUnlocked);
ds_map_add(_map,"39",global.pjumpUnlocked);
ds_map_add(_map,"40",global.armorUnlocked);
ds_map_add(_map,"41",global.saveWarpUnlocked);
ds_map_add(_map,"42",global.doubleJumpUnlocked);
ds_map_add(_map,"43",global.mmUpgradeUnlocked);
ds_map_add(_map,"44",global.orbTrackUnlocked);
ds_map_add(_map,"45",global.magnetMoneyUnlocked);
ds_map_add(_map,"46",global.dashCDUnlocked);

//Solar and Lunar Armor Unlocks
ds_map_add(_map,"47",global.swordLightUnlocked);
ds_map_add(_map,"48",global.swordDarkUnlocked);
ds_map_add(_map,"49",global.armorLightUnlocked);
ds_map_add(_map,"50",global.armorDarkUnlocked);
ds_map_add(_map,"51",global.dodgeLightUnlocked);
ds_map_add(_map,"52",global.dodgeDarkUnlocked);
ds_map_add(_map,"53",global.lightDarkUnlocked);

//Solar and Lunar Orb
ds_map_add(_map,"54",global.sunOrbsGained);
ds_map_add(_map,"55",global.totalSunOrbsUnlocked);
ds_map_add(_map,"56",global.totalMoonOrbsUnlocked);
ds_map_add(_map,"57",global.moonOrbsGained);
ds_map_add(_map,"58",global.moonOrb1Unlocked);
ds_map_add(_map,"59",global.moonOrb2Unlocked);
ds_map_add(_map,"60",global.moonOrb3Unlocked);
ds_map_add(_map,"61",global.sunOrb1Unlocked);
ds_map_add(_map,"62",global.sunOrb2Unlocked);
ds_map_add(_map,"63",global.sunOrb3Unlocked);

//Controls
ds_map_add(_map,"64",global.upStr);
ds_map_add(_map,"65",global.downStr);
ds_map_add(_map,"66",global.rightStr);
ds_map_add(_map,"67",global.leftStr);
ds_map_add(_map,"68",global.jumpStr);
ds_map_add(_map,"69",global.attackStr);
ds_map_add(_map,"70",global.dashStr);
ds_map_add(_map,"71",global.startStr);
ds_map_add(_map,"72",global.lStr);
ds_map_add(_map,"73",global.rStr);

//Map Location
ds_map_add(_map,"74",global.lastRoomInY);
ds_map_add(_map,"75",global.lastRoomInX);

//Gemstone Cavern Keys
ds_map_add(_map,"76",global.moonDungeon1BossKey);
ds_map_add(_map,"77",global.moonDungeon1BossDoor);


ds_map_add(_map,"78",global.moonDungeon1Keys);
ds_map_add(_map,"79",global.moonDungeon1Doors);

//Minimap Data
var mapData = scr_saveMiniMap();
ds_map_add(_map,"80",ds_grid_write(mapData));

//////////////////
//Wrapping the list to a map
	var _wrapper = ds_map_create();
	ds_map_add_list(_wrapper,"ROOT",_rootList);
//Save all of this to a string
	var _string = json_encode(_wrapper);
	scr_saveStringToFile("gameSave.sav",_string);
//Delete all the data
	ds_map_destroy(_wrapper);