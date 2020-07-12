/// @description Insert description here
// You can write your code in this editor
if (gridCreated == false){
	
magnitudeGrid = ds_grid_create(width,maxHeight);
angleGrid = ds_grid_create(width,maxHeight);
ds_grid_clear(magnitudeGrid,vecMag);
ds_grid_clear(angleGrid,vecAngle);
gridCreated = true;
}


