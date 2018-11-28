///////////Dazed


	instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_dazedParticle);
	global.counter3 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter3 = 25) || (obj_Player.hp <= 0))
{
	global.counter3 = 0;
	global.P1key_left = global.dazedOldLeft;
	global.P1key_right = global.dazedOldRight;
	global.statusDazed = false;
}

else
{
alarm[2] = 10;
}