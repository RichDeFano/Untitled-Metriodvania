
var mapDSGrid = ds_grid_create(global.mapSizeY,global.mapSizeX);
for (var i = 0; i <= global.mapSizeY; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=global.mapSizeX;j++) ////J = X = 7 Columns
	{
		var newValue = obj_miniMap.mapGrid[i,j];
		ds_grid_set(mapDSGrid,i,j,newValue);
	}
}

return mapDSGrid;
