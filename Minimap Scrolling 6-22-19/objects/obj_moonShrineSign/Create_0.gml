/// @description Insert description here
// You can write your code in this editor
event_inherited();
myName = "-Lunar Shrine-"

if ((global.armorLightUnlocked == false) && (global.dodgeLightUnlocked == false) && (global.swordLightUnlocked == false))
{
	myText[0] = "Please offer any sun stones you have to this shrine, and then pick your upgrade.";
	if (global.sunOrbsGained > 0)
		{
		myText[1] = "//ChooseAbilityMoon";
		}
	else
		{
			myText[1] = "It looks like you dont have the items needed for this offering.."
		}
}
else
{
	myText[0] = "....................";
	myText[1] = "You have pledged your devotion elsewhere, and unsurprisingly get no response.";
}
myType = "Read";