if (global.hookshotUnlocked == true)
{
	if (global.dodgeDarkUnlocked == false) && (global.dodgeLightUnlocked == false)
	{
		scr_draw_hookshot();
	}
	if (global.dodgeDarkUnlocked == true) 
	{
		//scr_shadowDashing();
		//scr_draw_hookshotD();
		scr_draw_hookshot();
	}
	if (global.dodgeLightUnlocked == true)
	{
		//scr_stunDashing();
		scr_draw_hookshot();
	}
	if (global.lightDarkUnlocked == true)
	{
		scr_draw_hookshot();
	}
}