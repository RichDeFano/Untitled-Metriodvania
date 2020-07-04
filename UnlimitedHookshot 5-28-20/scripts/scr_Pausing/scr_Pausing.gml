//key_start = (keyboard_check_released(global.P1key_start) || (gamepad_button_check_released(0,global.P1key_start)));
if ((global.inText == false) && (global.atShrine == false))
{

if (key_start_released)
{ 
	if (global.pause == false)
		{
			scr_countUpgrades();
			global.pause = true;
			instance_deactivate_all(true);
		}
	else
	{
		global.pause = false;
		instance_activate_all();
		instance_deactivate_object(obj_mmCursor);
		global.justTeleported = false;
		global.teleportTimer = false;	
		global.teleporting = false;
		obj_Player.move_lock = false;
	}
}


}