
var mapDSGrid = ds_grid_create(29,33);
for (var i = 0; i <= 29; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=33;j++) ////J = X = 7 Columns
	{
		var newValue = obj_miniMap.mapGrid[i,j];
		ds_grid_set(mapDSGrid,j,i,newValue);
	}
}

return mapDSGrid;
