/*-----------------------------------------------------------------------------
Water Sidescroller Shader: create a distorted & recoloured reflection
Fragment Shader: distort & colourize
-----------------------------------------------------------------------------*/

varying vec2		v_vTexcoord;
varying vec4		v_vColour;

varying vec2		v_vPosition_R;
varying vec2		v_vPosition_G;
varying vec2		v_vPosition_B;

uniform vec2		distort_strength;	// could be turned into a constant
uniform vec3		water_col;			// could be turned into a constant
uniform vec2		col_mix;			// could be turned into a constant
uniform vec3		brt_sat_con;		// could be turned into a constant

uniform sampler2D	distort_tex;

//uniform float		blend_mode;			// for testing only
uniform float		show_result;		// for debugging only

///Wave on top of water



void main() {

	
    // DISTORT REFLECTION:
	// create s the distorted water surface effect
	//----------------------------------------------------------------------------
	vec3 distort_sample;
	distort_sample.r	= texture2D(distort_tex, fract(v_vPosition_R)).r;
	distort_sample.g	= texture2D(distort_tex, fract(v_vPosition_G)).g;
	distort_sample.b	= texture2D(distort_tex, fract(v_vPosition_B)).b;
	distort_sample		-= 0.5;
	
	vec2 distort		= distort_sample.rg * distort_sample.b * distort_strength * (0.2 + 0.8 * v_vTexcoord.y);
	vec3 base_col		= texture2D( gm_BaseTexture, clamp(v_vTexcoord + distort, 0.0, 1.0)).rgb;
		
	// BLEND REFLECTION WITH BLEND COLOUR:
	// After testing, choose one blend mode, remove the if statement and the uniform blend_mode.
	//----------------------------------------------------------------------------
	vec3 light_or_dark;
	vec3 out_col;
	
		light_or_dark = floor(0.5 + v_vColour.rgb);
		out_col =	light_or_dark			* (1.0 - (1.0 - base_col) * (1.0 - (v_vColour.rgb - 0.5))) + 
					(1.0 - light_or_dark)	* (base_col * (v_vColour.rgb + 0.5));

	// ADJUST BLENDED COLOUR:
	//----------------------------------------------------------------------------
	// brightness:
	out_col += brt_sat_con.x;
	
	// saturation:
	float value = dot(out_col, vec3(0.299, 0.587, 0.114));
	out_col = mix(vec3(value), out_col, brt_sat_con.y);
	
	// contrast:
	out_col = (out_col - 0.5) * brt_sat_con.z + 0.5;
	
	// MIX REFLECTION WITH WATER COLOUR:
	//----------------------------------------------------------------------------
	out_col	= mix(water_col, out_col, smoothstep(col_mix.r, col_mix.g, dot(base_col, vec3(0.299, 0.587, 0.114))));
	
		
	// DEBUG:
	// After testing, remove this and the show_result uniform
	//----------------------------------------------------------------------------
	//out_col = mix(out_col, distort_sample, show_result);
	vec4 final_col = vec4(out_col,0.90);
	
	// OUTPUT:
	//----------------------------------------------------------------------------
	gl_FragColor		= final_col * texture2D(gm_BaseTexture,v_vTexcoord);//
}

