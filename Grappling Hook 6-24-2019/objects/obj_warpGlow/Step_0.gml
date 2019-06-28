/// @description Insert description here
// You can write your code in this editor


	if (startFade == false)
	{
		alarm[0] = 50;
		startFade = true;
	}



if ((makeVis == false) && (alph > 0))
{
	alph-=0.025;
}

if (alph <= 0)
{
	startFade = false;
}