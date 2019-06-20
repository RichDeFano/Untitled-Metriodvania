var _gameOn = string_format(global.saveOn,1,1);
var _rootList = ds_list_create();
	var _map = ds_map_create();
	ds_list_add(_rootList,_map);
	ds_list_mark_as_map(_rootList,ds_list_size(_rootList)-1);
//Add Data
	ds_map_add(_map,"boss1Defeat",global.bossDefeated1);
//Wrapping the list to a map
	var _wrapper = ds_map_create();
	ds_map_add_list(_wrapper,"ROOT",_rootList);
//Save all of this to a string
	var _string = json_encode(_wrapper);
	scr_saveStringToFile("gameSave.sav",_string);
//Delete all the data
	ds_map_destroy(_wrapper);