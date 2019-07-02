varying vec2 v_texcoord;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
    vec3 sepia = vec3(0.0);
    sepia.r = dot(colour.rgb, vec3(0.393,0.769,0.189));
    sepia.g = dot(colour.rgb, vec3(0.349,0.686,0.168));
    sepia.b = dot(colour.rgb, vec3(0.272,0.534,0.131));
    gl_FragColor.rgb = mix(colour.rgb,sepia.rgb, 1.0);
    gl_FragColor.a = colour.a;
}
