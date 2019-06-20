if (file_exists("gameSave.sav"))
{
var _wrapper = scr_loadJSONFromFile("gameSave.sav")
	var _list = _wrapper[? "ROOT"]
	
	for (var i = 0; i < ds_list_size(_list); i++)
	{
	var _map = _list[| i];
	global.bossDefeated1 = _map[? "boss1Defeat"];
	}
ds_map_destroy(_wrapper);
}

else
{
	global.bossDefeated1 = false;
}