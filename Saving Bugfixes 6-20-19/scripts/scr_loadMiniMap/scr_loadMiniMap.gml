var mapDSGrid = argument0;
var mapGrid;

for (var i = 0; i <= 29; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=33;j++) ////J = X = 7 Columns
	{
		var newValue = ds_grid_get(mapDSGrid,j,i);
		mapGrid[i,j] = newValue;
	}
}

return mapGrid;
