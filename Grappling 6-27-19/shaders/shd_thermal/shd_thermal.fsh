varying vec2 v_texcoord;

void main()
{
    vec4 base_colour = texture2D(gm_BaseTexture, v_texcoord);
    
    vec3 colours[3];
    colours[0] = vec3(0.0,0.0,1.0);
    colours[1] = vec3(1.0,1.0,0.0);
    colours[2] = vec3(1.0,0.0,0.0);
    
    float lum = (base_colour.r+base_colour.g+base_colour.b)/3.0;
    
    int ix=1;
    if (lum < 0.5) {ix = 0;}
    
    vec3 thermal = mix(colours[ix],colours[ix+1],(lum-float(ix)*0.5)/0.5);
    
    gl_FragColor = vec4(thermal,base_colour.a);
 
}
