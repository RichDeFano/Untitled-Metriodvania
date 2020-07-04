/*-----------------------------------------------------------------------------
Water Sidescroller Shader: create a distorted & recoloured reflection
Vertex Shader: set up distortiom map coordinate systems
-------------------------------------------------------------------------------
_______________________________________________________________________________
INFO:
-------------------------------------------------------------------------------
First draw a vertical reflection of the upper part of the application surface
onto a water surface and then draw the surface back to the application surface
using this shader:

   +-------------------+   +-------------------+   +-------------------+
   |AppSrf   /\        |   |AppSrf   /\        |   |AppSrf   /\        |
   |    /\  /  \       |   |    /\  /  \       |   |    /\  /  \       |
   |   /  \/    \  /\  |-->|-------------------|-->|   <  ><    >      |
   |  /          \/  \ |   |    \/  \  /       |   |    \/  \  /       |
   | /                \|   |WaterSrf \/        |   |         \/        |
   +-------------------+   +-------------------+   +-------------------+
   


The shader will use a distortion map to distort in the x and y axis.
The distortion map should have 3 different but tileable leopard patterns. One
an each colour channel. The red channel will distort the y-axis, the green
channel will distort the x-axis and the blue channel will affect both to add
some irregularites.

The shader will also use the vertex colour and an additional colour to colourize
the water surface. The vertex colour is blended with the sample colour in a 
photoshop blend mode and the water colour will be mixed in to reduce the 
reflection strength.

Optionally the shader also allows to change the brightness, saturation and
contrast of the reflection to emulate the influence of weather and water
particles.

_______________________________________________________________________________
UNIFORMS:
-------------------------------------------------------------------------------
vec2	pattern_size		width and height in pixels of the distortion map
							could be turned into a constant
							
vec3	water_shift_RGB		movement of the distortion channels in pixels
							needs to constantly de- or increase to move the distortion
							R: affects general distortion and can be on for still water
							G: emulates horizontal movement
							B: adds irregularites and emulates vertical movement

vec2	distort_strength	x: 0 <= abs(distort_strength.x) < 0.2 looks good
							y: 0 <= abs(distort_strength.x) < 2.0 looks good
							how much the surface is distorted in the x & y axis
							could be turned into a constant
							
vec3	water_col			0 <= water_col.rgb <= 1
							mainly replaces the dark areas of the reflection
							(whereas the vertex colour affects all)
							could be turned into a constant
							
vec2	col_mix				0 <= col_mix[0] + col_mix[1] <= 1
							both components added up shouldn't be larger than 1
							lower and upper threshold when smppth-mixing water_col with the sample colour
							could be turned into a constant
							
vec3	brt_sat_con			-1 <= brt <= 1 // 0 is neutral
							 0 <= sat <= 4 // 1 is neutral
							 0 <= con <= 4 // 1 is neutral
							sets brightness, saturation & contrast
							could be removed or turned into a constant

s2D		distort_tex			texture id of the distortion map

float	blend_mode			0: overlay
							1: soft light
							2: hard light
							3: vivid light
							for testing only, should be removed
							
float	show_result			0 <= show_result <= 1
							mixes the distortion maps colour with the output colour
							for debugging only, should be removed

_______________________________________________________________________________
EXAMPLE:
-------------------------------------------------------------------------------
check demo file
*/

attribute vec3	in_Position;		// (x,y,z)
attribute vec4	in_Colour;			// (r,g,b,a)
attribute vec2	in_TextureCoord;	// (u,v)
  
varying vec2	v_vTexcoord;
varying vec4	v_vColour;

varying vec2	v_vPosition_R;
varying vec2	v_vPosition_G;
varying vec2	v_vPosition_B;

uniform vec2	pattern_size;		// could be turned into a constant
uniform vec3	water_shift_RGB;


void main() {
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position		= gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour		= in_Colour;
    v_vTexcoord		= in_TextureCoord;
	
	v_vPosition_R	= (in_Position.xy - vec2(water_shift_RGB.r, 0.0)) / pattern_size;
	v_vPosition_G	= (in_Position.xy - vec2(water_shift_RGB.g, 0.0)) / pattern_size;
	v_vPosition_B	= (in_Position.xy - vec2(0.0, water_shift_RGB.b)) / pattern_size;
}
