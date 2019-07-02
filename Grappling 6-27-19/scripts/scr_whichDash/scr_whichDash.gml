if (global.dodgeUnlocked == true)
{
	if (global.dodgeDarkUnlocked == false) && (global.dodgeLightUnlocked == false)
	{
		scr_dashing();
	}
	if (global.dodgeDarkUnlocked == true) 
	{
		scr_shadowDashing();
	}
	if (global.dodgeLightUnlocked == true)
	{
		scr_stunDashing();
	}
	if (global.lightDarkUnlocked == true)
	{
		scr_dashing();
	}
}