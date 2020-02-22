///////////Poison


	//obj_Player.hp -= 1;
	temp = instance_create_layer(obj_Player.x,obj_Player.y,"ObjUnderPlayer",obj_statusDmg)
	temp.damage = 1;
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_poisonParticle);
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_poisonParticle);
	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_poisonParticle);
	global.counter2 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter2 = 5) || (obj_Player.hp <= 0))
{
	global.counter2 = 0;
	//obj_Player.hp = obj_Player.maxhp;
	global.statusPoison = false;
	global.haveSet2 = false;
}

else
{
alarm[1] = 150;
}