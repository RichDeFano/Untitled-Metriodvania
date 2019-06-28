if (global.pause == true)
{

	
draw_sprite(spr_pauseBG,global.pauseScreenOn,0,0);

	if (global.pauseScreenOn == 0)
	{scr_mmDraw();}

	if (global.pauseScreenOn == 1)
	{scr_upgradeDraw();}

	if (global.pauseScreenOn == 2)
	{scr_hpDraw();}
	
	if (global.pauseScreenOn == 3)
	{scr_tomesDraw();}
	
	if (global.pauseScreenOn == 4)
	{scr_settingsDraw();}



}
var newRoomString = string(global.debugNumb);
draw_text(20,20,newRoomString);	
