/// @description Insert description here
// You can write your code in this editor

if (obj_Player.dashing == true)
{instance_destroy();}
if (hsp = 0.001)
{
	hsp = 2*obj_Player.image_xscale*4;
}

x += hsp;

////////////////////////////////////
//Collision Checking
////////////////////////////////////
hsp_carry = 0;
var hsp_final = (hsp + hsp_carry);
hsp_carry = 0;
	yplus = 0;

//Horizontal Collision
if (place_meeting(x+hsp_final,y,obj_wall))
{



	//yplus = 0;
	while (place_meeting(x+hsp_final,y-yplus,obj_wall) && (yplus <= 5))
		{
			yplus+=1;
			//global.testVar = yplus;
		}
		
	if (place_meeting(x+hsp_final,y-yplus,obj_wall))
	{
		if (!place_meeting(x+sign(hsp_final),y,obj_wall))
	    {
	    x += sign(hsp_final);
	    }
				hsp_final = 0;
		hsp = 0;
	}
	else
	{y-= yplus}
	
//hsp_final = 0;
//hsp = 0;

}
x += hsp_final;



if ((!place_meeting(x,y,obj_wall)) && (vsp >= 0) && (place_meeting(x,y+2+abs(hsp_final),obj_wall)))
{
	
	while !(place_meeting(x,y+1,obj_wall))
	{y += 1;}
}


//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{

   while (!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
