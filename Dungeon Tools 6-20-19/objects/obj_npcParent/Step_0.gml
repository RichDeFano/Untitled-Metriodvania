
/// @description Insert description here
// You can write your code in this editor
if (collision_circle(x,y,20,obj_Player,0,1))
{
//global.canInteract = true;
thisDraw = true;
if (obj_Player.key_attack) //&& (global.inText == false)
{
		if (myTextBox = noone)
		{
			myTextBox = instance_create_layer(x,y,"Text",obj_TextBox); 
			myTextBox.text = myText;
			myTextBox.creator = self;
			myTextBox.name = myName;
		}
}
}

else
{
	//global.canInteract = false;
	thisDraw = false;
}
