///////////Burning


	//obj_Player.hp -= 1;
	temp = instance_create_layer(obj_Player.x,obj_Player.y,"ObjUnderPlayer",obj_statusDmg)
	temp.damage = 1;
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_burningParticle);
	global.counter1 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter1 = 5) || (obj_Player.hp <= 0))
{
	global.counter1 = 0;
	//obj_Player.hp = obj_Player.maxhp;
	global.statusBurning = false;
}

else
{
alarm[0] = 110;
}