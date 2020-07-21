/// @description Insert description here
// You can write your code in this editor
draw_self();
if (firing == true){
	//draw_rectangle(x,y,x+newX,y-newY,true);
	for(var h = 0; h < maxHeight*2; h++){
		for(var w=0; w<=width*2;w++){
			var newY = (h*8)*dcos(image_angle) - (w*8)*dsin(image_angle);
			var newX = (h*8)*dsin(image_angle) + (w*8)*dcos(image_angle);
			if ((abs(obj_Player.x-(x-newX)) <= 8) && (abs(obj_Player.y-(y-newY)) <= 16))
			{
				draw_point_color(x-newX,y-newY,c_green);
				//var val = ds_grid_get(angleGrid,w,h);
				//if (val >= 0)
				//obj_Player.
				//{draw_text(x-newX,y-newY,val);}
			}
			else
			{
				/*
				var mag = ds_grid_get(magnitudeGrid,w,h);
				if (mag < 2)
				{draw_sprite_ext(spr_forceVector,0,x-newX,y-newY,1,1,image_angle,c_green,0.5);}
				else if (mag >= 2) && (mag < 4)
				{draw_sprite_ext(spr_forceVector,0,x-newX,y-newY,1,1,image_angle,c_yellow,0.75);}
				else if (mag >= 4)
				{draw_sprite_ext(spr_forceVector,0,x-newX,y-newY,1,1,image_angle,c_red,1);}
				*/
			draw_point_color(x-newX,y-newY,c_red);
			}
			//draw_point(x-newX,y-newY);
		}
	}
}


//y' = y*cos(a) - x*sin(a)
		
//x' = y*sin(a) + x*cos(a)