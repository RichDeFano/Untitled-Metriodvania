var saveX,saveY,multiX,multiY,atX,atY,Q,R;
saveX = 0;
saveY = 0;
atX = 0;
atY = 0;
multiX = (room_width/640);
multiY = (room_height/480);


saveX = obj_save.x;
saveY = obj_save.y;
	
if ((saveX >= 0) && (saveX <= 640))
	{atX = 1;}
else if ((saveX > 640) && (saveX <= 1280))
	{atX = 2;}
else if ((saveX > 1280) && (saveX <= 1920))
	{atX = 3;}
else if ((saveX > 1920) && (saveX <= 2560))
	{atX = 4;}
//
if ((saveY >= 0) && (saveY <= 480))
	{atY = 1;}
else if ((saveY >480) && (saveY <= 960))
	{atY = 2;}
else if ((saveY > 960) && (saveY <= 1440))
	{atY = 3;}
else if ((saveY > 1440) && (saveY <= 1920))
	{atY = 4;}
	
for(Q=(multiY-1); Q>=0; Q--)
	{
		for(R=(multiX-1);R>=0;R--)
		{
		mapGrid[global.gridY+Q,global.gridX+R] = 1;
		}
	}
mapGrid[global.gridY+atY-1,global.gridX+atX-1] = 2;
	
	
	
