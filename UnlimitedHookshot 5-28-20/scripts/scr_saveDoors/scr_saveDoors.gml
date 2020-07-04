var doorArray = argument0;

var tempList = ds_list_create();
var arraySize = array_length_1d(doorArray);

for (var i = 0; i < arraySize; i++)
{
	var newData = doorArray[i];
	ds_list_add(tempList,newData);
}

return tempList;