if (global.pjumpUnlocked == true)
{

var closest = (instance_nearest(x,y,obj_gainJump));

if (collision_circle(x,y,12,obj_gainJump,false,true))
{
	


if (closest.jumpable == true)
{
	
closest.jumpable = false;
closest.visible = false;
closest.alarm[0] = 500;

jumps = jumpsmax;
if ((dashing == false) && (attacking == false))
{
vsp = -jumpspeed;
}

}
}


}