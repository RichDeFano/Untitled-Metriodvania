if (global.pause == true)
{

	
draw_sprite(spr_pauseBG,global.pauseScreenOn,0,0);

	if (global.pauseScreenOn == 0)
	{scr_mmDraw();}

	if (global.pauseScreenOn == 1)
	{scr_upgradeDraw();}

	if (global.pauseScreenOn == 2)
	{scr_hpDraw();}



}
	
