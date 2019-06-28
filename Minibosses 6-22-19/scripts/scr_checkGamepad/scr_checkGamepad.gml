var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
   {
	   
   if (gamepad_is_connected(i)) 
   {
	   global.gp[i] = true
	   gamepad_set_axis_deadzone(i,0.4);
   }
   else
   {
	   global.gp[i] = false;
   }
   
}
   