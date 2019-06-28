


switch (state)
{
	case pState.normal:
		{scr_Moving();}break;
	case pState.swing:
	{
			if (haveSetHook == false)
				{
				//scr_checkForConnection();
				if (key_rtrheld)
					{
						colorPurp = true;
						notHookshotting = false;
						}
				else
					{
						colorRed = true;
						notHookshotting = true;
						}
				haveSetHook = true;
				}
			else
			{
				if (notHookshotting == true)
					{scr_grapplingHook();}
				else
					{scr_hookshot();}
				}
			}
			}




	
	
	/*
			if (hooking == false)
		{
			if (mouse_check_button(mb_left))
				{notHookshotting = false;}
			else
				{notHookshotting = true;}
		}
			
		if (notHookshotting == true)
		{scr_grapplingHook();}
		else
		{scr_hookshot();}
			
		}