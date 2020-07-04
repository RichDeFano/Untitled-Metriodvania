if (global.mmX2 == 0)
{
	if (global.mmY2 == 0)
		{
			if (global.swordUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Sword Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 1)
		{
			if (global.doubleJumpUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Double Jump Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 2)
		{
			if (global.pjumpUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Drafting Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 3)
		{
			if (global.dodgeUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Dodge and Counter Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 4)
		{
			if (global.wallJumpUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Wall Cling Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 5)
		{
			if (global.saveWarpUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Fast Travel Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
		
	else if (global.mmY2 == 6)
		{
			if (global.mmUpgradeUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Mini Map Upgrade Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 7)
		{
			if (global.hookshotUnlocked== true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Hookshot Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 8)
		{
			if (global.magnetMoneyUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Magnet Money Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
	else if (global.mmY2 == 9)
		{
			if (global.dashCDUnlocked == true)
			{
			if (myTextBox = noone)
			{
				myTextBox = instance_create_depth(x,y,-150,obj_TextBoxMenu); 
				myTextBox.text[0] = "Temp Dash CD Menu Text";
				myTextBox.creator = self;
				myTextBox.name = "Upgrade";
			}
		}
		}
}