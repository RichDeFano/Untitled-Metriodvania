var keyArray = argument0;

var tempList = ds_list_create();
var arraySize = array_length_1d(keyArray);

for (var i = 0; i < arraySize; i++)
{
	var newData = keyArray[i];
	ds_list_add(tempList,newData);
}

return tempList;