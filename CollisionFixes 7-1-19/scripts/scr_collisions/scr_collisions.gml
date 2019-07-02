/*
if the player is somewhere and a block(moving platform enters)
the player will not be pushed or moved out
the block will get stuck until its X is past the player

it should push the player as it moves
wall prio > player prio
*/
var dontLoop = false;

if (!place_meeting(x,y,obj_wallJT))
{
 while (place_meeting(x,y,obj_wall) && (dontLoop == false))
	{	
	var moved = false;
	glowYellow = true;
	for (var i = 0; i < 4; i++)
		{
		if (place_free(x+i,y))
			{
				x = x+i;
				moved = true;
			}
		if (place_free(x-i,y))
			{
				x = x-i;
				moved = true;
			}
		if (place_free(x,y+i))
			{
				y = y+i;
				moved = true;
			}
		if (place_free(x,y-i))
			{
				y = y-i;
				moved = true;
			}
		}
		dontLoop = true;
		//if (moved == true)
		//{glowYellow = false;}

		
	}
}
else
{glowYellow = false;}

/*
check if you can push right, then left
check if you can push down, then up
whatever is free move towards?
