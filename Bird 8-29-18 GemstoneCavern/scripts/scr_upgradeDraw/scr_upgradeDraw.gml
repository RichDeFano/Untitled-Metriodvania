draw_set_font(global.Font);

if (global.swordUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,104);
	draw_text_color(110,104,"Sword",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,104);}

if (global.doubleJumpUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,136);
	draw_text_color(110,136,"Double Jump",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,136);}

if (global.pjumpUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,168);
	draw_text_color(110,168,"Drafting",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,168);}

if (global.dodgeUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,200);
	draw_text_color(110,200,"Dodge and Counter",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,200);}

if (global.wallJumpUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,232);
	draw_text_color(110,232,"Wall Clinging",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,232);}

if (global.saveWarpUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,264);
	draw_text_color(110,264,"Fast Travel",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,264);}

if (global.mmUpgradeUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,296);
	draw_text_color(110,296,"Map Upgrade",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,296);}

if (global.orbTrackUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,328);
	draw_text_color(110,328,"Orb Tracker",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,328);}

if (global.magnetMoneyUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,360);
	draw_text_color(110,360,"Magnet Money",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,360);}

if (global.dashCDUnlocked == true)
{
	draw_sprite(spr_pauseUpgrade,0,79,392);
	draw_text_color(110,392,"Dash Cooldown Reduction",c_purple,c_purple,c_purple,c_purple,1);
}
else
{draw_sprite(spr_pauseUpgrade2,0,79,392);}
///////////////////////
draw_sprite(spr_pauseSunOrbs,0,332,104);
	if (global.sunOrb1Unlocked == true)
		{draw_sprite(spr_sunOrb,0,389,112);}
	if (global.sunOrb2Unlocked == true)
		{draw_sprite(spr_sunOrb,0,435,112);}
	if (global.sunOrb3Unlocked == true)
		{draw_sprite(spr_sunOrb,0,481,112);}
//
draw_sprite(spr_pauseMoonOrbs,0,332,136);
	if (global.moonOrb1Unlocked == true)
		{draw_sprite(spr_moonOrb,0,389,144);}
	if (global.moonOrb2Unlocked == true)
		{draw_sprite(spr_moonOrb,0,435,144);}
	if (global.moonOrb3Unlocked == true)
		{draw_sprite(spr_moonOrb,0,481,144);}
//
draw_sprite(spr_pauseHeart,0,332,168);
	draw_text_color(363,168,string(global.heartsGotten) + "/20",c_red,c_red,c_red,c_red,1);
//
draw_sprite(spr_pauseUpgrade,0,332,200);
	draw_text_color(363,200,string(global.upgradesGotten) + "/10",c_purple,c_purple,c_purple,c_purple,1);
//
draw_sprite(spr_pauseTome,0,332,232);
	draw_text_color(363,232,string(global.tomesGotten) + "/X",c_white,c_white,c_white,c_white,1);
//
draw_sprite(spr_pauseBoss,0,332,264);
	draw_text_color(363,264,string(global.bossesKilled) + "/X",c_white,c_white,c_white,c_white,1);


/*
if (global.hpUnlocked17 == true)
{
	draw_sprite(spr_pauseHeart,0,332,296);
	draw_text_color(363,296,"HP Upgrade #17",c_red,c_red,c_red,c_red,1);
}
else
{draw_sprite(spr_pauseHeart2,0,332,296);}

if (global.hpUnlocked18 == true)
{
	draw_sprite(spr_pauseHeart,0,332,328);
	draw_text_color(363,328,"HP Upgrade #18",c_red,c_red,c_red,c_red,1);
}
else
{draw_sprite(spr_pauseHeart2,0,332,328);}

if (global.hpUnlocked19 == true)
{
	draw_sprite(spr_pauseHeart,0,332,360);
	draw_text_color(363,360,"HP Upgrade #19",c_red,c_red,c_red,c_red,1);
}
else
{draw_sprite(spr_pauseHeart2,0,332,360);}

if (global.hpUnlocked20 == true)
{
	draw_sprite(spr_pauseHeart,0,332,392);
	draw_text_color(363,392,"HP Upgrade #20",c_red,c_red,c_red,c_red,1);
}
else
{draw_sprite(spr_pauseHeart2,0,332,392);}