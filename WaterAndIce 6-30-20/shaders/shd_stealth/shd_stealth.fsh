//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

/*

Get each line of horizontal pixels in a sprite
Normal
Semi distorted(moved left/right a few
Half the lines are invisible
Semi distorted in
mostly all gone, few colors remain

how to make it more techno looking?
add faint light from armor, emiya pathways/karma mark?
*/

uniform float Time;

void main()
{
	//vec4 spr;
    //spr=texture2D(gm_BaseTexture,v_vTexcoord);
	
	//vec2 newCoord = spr + vec2(cos(v_vTexcoord.y*30.0+Time*6.2831)/30.0,0);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
