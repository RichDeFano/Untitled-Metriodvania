/// @description Insert description here
// You can write your code in this editor
if (global.gp[0] == true)
{
	
	for ( var i = gp_face1; i < gp_axisrv; i++ ) {
	    if ( gamepad_button_check( 0, i ) ) 
		{thisStr = i;
			anyPressed = 1;}
			
	}
}

else
{
	if (keyboard_lastkey != -1)
	{
		thisStr = keyboard_lastkey;
		anyPressed = 1;
	}
}

if (anyPressed == 1)
{
	instance_destroy();
}