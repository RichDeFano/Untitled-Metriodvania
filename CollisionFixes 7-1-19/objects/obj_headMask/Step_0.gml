/// @description Insert description here
// You can write your code in this editor\
/*
if (instance_exists(obj_hookshot))
{
obj_headMask.x = obj_hookshot.hookConnectionX;
obj_headMask.y = obj_hookshot.hookConnectionY;
			if place_meeting(obj_hookshot.hookConnectionX,obj_hookshot.hookConnectionY,obj_wall)
				{
					if (obj_hookshot.contract == false)
						{
							obj_hookshot.connected = true;
							obj_Player.ropeLength = obj_hookshot.ropeLength;
							//obj_Player.ropeX = x;
							//obj_Player.ropeY = y;
							obj_Player.haveSetHook = false;
							obj_Player.state = pState.swing;
							}
				}
}
else
{
	instance_destroy();
}