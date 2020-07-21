obj_Player.state = pState.normal;
obj_Player.haveSet = false;
obj_Player.hooking = false;
obj_Player.haveSetHook = false;
obj_Player.notHookshotting = true;

obj_Player.startDrawingHook = false;
obj_Player.setupComplete = false;
obj_Player.colorPurp = false;
obj_Player.colorRed = false;
obj_Player.drawAngle = false;
obj_Player.failedShot = false;
//obj_Player.speed = 0;
//obj_Player.extravsp = vsp;



if (obj_Player.hsp < 0) //negative, left
{
	if ( obj_Player.hsp < -3){
		obj_Player.extrahsp = -3;}
	else
	{obj_Player.extrahsp = obj_Player.hsp;}
}

if (obj_Player.hsp > 0) //positive, right
{
	if ( obj_Player.hsp > 3){
		obj_Player.extrahsp = 3;}
	else
	{obj_Player.extrahsp = obj_Player.hsp;}
}
