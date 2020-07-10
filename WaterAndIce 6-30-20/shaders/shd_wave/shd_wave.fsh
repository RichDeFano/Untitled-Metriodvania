//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;
uniform float springs[2000];
uniform float time;
uniform float fizzle;
uniform float springCount;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	vec2 p = v_vTexcoord;
	float py = 1.0-p.y;
	float pixelsIn = (p.x / pixelW);
	int chunk = int(floor(p.x * springCount));
	int nextChunk = int(min(floor(p.x*springCount)+1.0,99.0));
	
	float chunkPercent = (p.x*springCount) - floor(p.x*springCount);
	p.y = p.y + ((sin((pixelsIn*0.05) + time) * (1.5*pixelH)) * py);
	p.y = p.y + ((sin((pixelsIn*0.1) - time * 1.4) * (1.5*pixelH))*py);
	p.y = p.y + (mix(springs[chunk] * pixelH, springs[nextChunk] * pixelH, chunkPercent) * py);
	p.y = max(p.y,0.0);
}
