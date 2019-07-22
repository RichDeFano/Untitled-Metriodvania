var gp_num = gamepad_get_device_count();
var connected = false;
for (var i = 0; i < gp_num; i++;)
{
	if (global.gp[i] == true)
	{
		connected = true;
	}
}

return connected;