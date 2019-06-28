/// @description Insert description here
// You can write your code in this editor
event_inherited();

if ((global.armorDarkUnlocked == false) && (global.dodgeDarkUnlocked == false) && (global.swordDarkUnlocked == false))
{
	myText[0] = "Please offer any moon stones you have to this shrine, and then pick your upgrade.";
	if (global.moonOrbsGained > 0)
		{
		myText[1] = "//ChooseAbilitySun";
		}
	else
		{
			myText[1] = "It looks like you dont have the items needed for this offering..";
		}
}
else
{
	myText[0] = "....................";
	myText[1] = "You have pledged your devotion elsewhere, and unsurprisingly get no response.";
}