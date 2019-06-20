isKilled = scr_isBoss(bossNumb);

if (isKilled == true)
{
	instance_destroy(obj_bossBarrierPre);
	instance_destroy(obj_bossBarrier);
	global.isBossCleared = true;
	instance_destroy();
	
}
	
else
	{

if ((haveSpoken == true) && (global.inText == false))
{
	global.inFight = true;

}

if ((haveSpoken == false) && (!instance_exists(obj_bossZone)))
{
	//global.inText = true;
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text = myText;
			myTextBox.creator = self;
			myTextBox.name = myName;
			haveSpoken = true;
		}
		
		
}


if (flying == false)
{ 

if !(collision_point(x,y,obj_wall,0,0))
	{
		if (vsp < 10) 
		{vsp += grav;}
	}

}

if !(place_meeting(x+hsp,y,obj_wall))
	{x += hsp;}
if !(place_meeting(x,y+vsp,obj_wall))
	{y += vsp;}


if (place_meeting(x,y+2,obj_wall))
{
if (move_lock == true)
{
		move_lock = false;
		hsp = 0;	
}
}

if (hp <=0)
{
	temp = instance_create_layer(x,y,"ObjOverPlayer",obj_enemyDestroy);
	temp.alliance = alliance;
	global.inFight = false;
	instance_destroy();
}

	}
