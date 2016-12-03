//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Game Boy color simulation fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 shades[4];

void main()
{
    vec4 vColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    // ITU-R BT.709 luminance: Y = 0.2126 R + 0.7152 G + 0.0722 B
    vec4 vLum = vec4(0.2126, 0.7152, 0.0722, 0.0);
    float lum = dot(vColor, vLum);
    
    gl_FragColor = vColor;
    if      (lum <= shades[0].a) gl_FragColor.rgb = vec3(shades[0]);
    else if (lum <= shades[1].a) gl_FragColor.rgb = vec3(shades[1]);
    else if (lum <= shades[2].a) gl_FragColor.rgb = vec3(shades[2]);
    else                         gl_FragColor.rgb = vec3(shades[3]);
}
