var statusNumb = 0;

if (global.statusBurning == true)
	{statusNumb += 1;}
if (global.statusPoison == true)
	{statusNumb += 1;}
if (global.statusDazed == true)
	{statusNumb += 1;}
if (global.statusCursed == true)
	{statusNumb += 1;}
if (global.statusFrozen == true)
	{statusNumb += 1;}
if (global.statusSlowed == true)
	{statusNumb += 1;}
global.statusEffects = statusNumb;

