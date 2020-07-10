/// @description Insert description here
// You can write your code in this editor
if (obj_Player.state != pState.swing)
{
if ((x == pastX) && ( y == pastY))
{
	isStuck = true;
	//solid = false;
	if !(instance_exists(obj_deadly))
	{
		instance_create_layer(obj_Player.x-2,obj_Player.y,"Text",obj_deadly)
		solid = false;
	}

}
else
{
	isStuck = false;
	if (instance_exists(obj_deadly))
	{
		//var nearest = instance_
		//instance_destroy(obj_deadly);
		solid = true;
	}
}
}