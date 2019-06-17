///////////Slowed


	//obj_Player.hp -= 1;
	//temp = instance_create_layer(obj_Player.x,obj_Player.y,"ObjUnderPlayer",obj_statusDmg)
	//temp.damage = 1;
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_slowParticle);
	global.counter6 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter6 = 15) || (obj_Player.hp <= 0))
{
	global.counter6 = 0;
	//obj_Player.hp = obj_Player.maxhp;
	global.statusSlowed = false;
	global.haveSet6 = false;
	global.slowedAlready = false;
}

else
{
alarm[7] = 15;
}