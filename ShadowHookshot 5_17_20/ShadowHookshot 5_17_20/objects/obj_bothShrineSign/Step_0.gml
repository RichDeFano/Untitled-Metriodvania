/// @description Insert description here
// You can write your code in this editor
event_inherited();


if (global.lightDarkUnlocked == false)
{
	myText[0] = "*Gibberish*";
	if (((global.sunOrb1Unlocked == true) && (global.sunOrb2Unlocked == true) && (global.sunOrb2Unlocked == true)) && ((global.moonOrb1Unlocked == true) && (global.moonOrb2Unlocked == true) && (global.moonOrb3Unlocked == true)))
		{
		myText[1] = "//ChooseAbilityBoth";
		}
	else
		{
			myText[1] = "It looks like you dont have the items needed for this offering.."
		}
}
else if (global.lightDarkUnlocked == true)
{
	myText[0] = "....................";
	myText[1] = "You have gained all you need from this relic.";	
}
else
{
	myText[0] = "....................";
	myText[1] = "You are not sure the purpose of the ancient statue, and get no reaction.";
}