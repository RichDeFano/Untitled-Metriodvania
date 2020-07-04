var i = 0;
var keyNumb = 0;
var dungNumb = scr_inDungeon();

if (dungNumb == 1)
{
	for (i = 0; i < global.moonD1KTotal; i++)
	{
		if (global.moonDungeon1Keys[i] == 1)
		{
			keyNumb++;
		}
	}
}

return keyNumb;