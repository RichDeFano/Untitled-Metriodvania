///////////Frozen


	//obj_Player.hp -= 1;
	//temp = instance_create_layer(obj_Player.x,obj_Player.y,"ObjUnderPlayer",obj_statusDmg)
	//temp.damage = 1;
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_curseParticle);
	global.counter5 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter5 = 15) || (obj_Player.hp <= 0))
{
	global.counter5 = 0;
	//obj_Player.hp = obj_Player.maxhp;
	global.statusPoison = false;
}

else
{
alarm[4] = 15;
}