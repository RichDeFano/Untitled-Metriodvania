/// @description Insert description here
// You can write your code in this editor
scr_buttonMovement();
//localx = 65+15;
//localy = 15+15;
imgspd = 0.5
canGo = true;
canClick = true;
nearestShrine = instance_nearest(x,y,obj_shrineUpgrade);
startingX = nearestShrine.x + 67;
startingY = nearestShrine.y + 67;

x = startingX;
y = startingY;