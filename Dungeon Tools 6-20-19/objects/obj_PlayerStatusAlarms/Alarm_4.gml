///////////Frozen
if !(instance_exists(obj_frozenParticle))
{instance_create_layer(obj_Player.x,obj_Player.y,"ObjOverPlayer",obj_frozenParticle);}
	global.counter5 += 1;
	//sound_play(global.SHeartReplenish);
	

if ((global.counter5 = 15) || (obj_Player.hp <= 0))
{
	global.counter5 = 0;
	//obj_Player.hp = obj_Player.maxhp;
	global.slowedAlready = false;
	global.statusSlowed = true;
	global.haveSet5 = false;
	global.statusFrozen = false;
}

else
{
alarm[4] = 10;
}