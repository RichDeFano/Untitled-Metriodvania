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


/*RGB COLORS
tempAmt = lerp(50,250,amount)
if (negative == true)
{amount -= 0.05;}
else
{amount += 0.05;}
color = make_color_rgb(0,255,tempAmt);
*/

//HSV COLORS
//H 120-200
//V = 65
//S = 65
tempAmt = lerp(80,170,amount)
if (negative == true)
{amount -= 0.05;}
else
{amount += 0.05;}
colorUnder = make_color_hsv(tempAmt,255,50);
colorMid = make_color_hsv(tempAmt,255,150);
colorUpper = make_color_hsv(tempAmt,255,255);


//draw it at a random x, set y
//randomly set it as a zero or one
//start it moving up until its invis
//delete when invis
if (setting == 0)
{
draw_sprite_ext(sprite_index,index,x,y,1,1,0,colorUnder,image_alpha);
}

if (setting == 1)
{
draw_sprite_ext(sprite_index,index,x,y,1,1,0,colorMid,image_alpha);
}

if (setting == 2)
{
draw_sprite_ext(sprite_index,index,x,y,1,1,0,colorUpper,image_alpha);
}


	/*
for (var i = 0; i < 6; i++)
{
whichIndex = random_range(0,1);
draw_sprite_ext(spr_zeroOne,whichIndex,x,y - i*w,1,1,0,color,1 - (0.2*i));
}