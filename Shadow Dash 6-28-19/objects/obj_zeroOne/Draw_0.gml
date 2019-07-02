/// @description Insert description here
// You can write your code in this editor

//Color Shading
if (amount == 0)
{
	negative = false;
}
if (amount == 1)
{
	negative = true;
}

tempAmt = lerp(50,250,amount)
if (negative == true)
{amount -= 0.05;}
else
{amount += 0.05;}
color = make_color_rgb(0,255,tempAmt);


//draw it at a random x, set y
//randomly set it as a zero or one
//start it moving up until its invis
//delete when invis
draw_sprite_ext(sprite_index,index,x,y,1,1,0,color,image_alpha);


	/*
for (var i = 0; i < 6; i++)
{
whichIndex = random_range(0,1);
draw_sprite_ext(spr_zeroOne,whichIndex,x,y - i*w,1,1,0,color,1 - (0.2*i));
}