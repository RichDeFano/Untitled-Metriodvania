/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(x,y,"Instances",con_displayManager);
if !(instance_exists(con_lightManager))
{instance_create_layer(x,y,"Player",con_lightManager);}
if !(instance_exists(con_textManager))
{instance_create_layer(x,y,"Player",con_textManager);}
if !(instance_exists(obj_miniMap))
{instance_create_layer(x,y,"Player",obj_miniMap);}