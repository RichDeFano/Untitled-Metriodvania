var mapDSGrid = argument0;
var mapGrid;

for (var i = 0; i <= global.mapSizeY; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=global.mapSizeX;j++) ////J = X = 7 Columns
	{
		var newValue = ds_grid_get(mapDSGrid,i,j);
		mapGrid[i,j] = newValue;
	}
}

return mapGrid;
