///////////Cursed


	//obj_Player.hp -= 1;
	//temp = instance_create_layer(obj_Player.x,obj_Player.y,"ObjUnderPlayer",obj_statusDmg)
	//temp.damage = 1;
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_curseParticle);
	global.counter4 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter4 = 15) || (obj_Player.hp <= 0))
{
	global.counter4 = 0;
	//obj_Player.hp = obj_Player.maxhp;
	global.statusCursed = false;
	global.haveSet4 = false;
}

else
{
alarm[3] = 15;
}