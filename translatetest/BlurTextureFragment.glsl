varying lowp vec4 DestinationColor;
 
varying lowp vec2 TexCoordOut;
uniform sampler2D Texture;

uniform highp vec2 TexSize;          //Size of the source texture

void main(void) {

    lowp vec4 sum = vec4(0.0);
    lowp vec2 blurSize = vec2(1.0/TexSize.x, 1.0/TexSize.y);
    
    sum += texture2D(Texture, vec2(TexCoordOut.x + (1.0 * blurSize.x), TexCoordOut.y + 0.0)) * 0.25;
    sum += texture2D(Texture, vec2(TexCoordOut.x - (1.0 * blurSize.x), TexCoordOut.y + 0.0)) * 0.25;
    sum += texture2D(Texture, vec2(TexCoordOut.x + 0.0, TexCoordOut.y + (1.0 * blurSize.y))) * 0.25;
    sum += texture2D(Texture, vec2(TexCoordOut.x + 0.0, TexCoordOut.y - (1.0 * blurSize.y))) * 0.25;


//    sum += texture2D(Texture, vec2(TexCoordOut.x - 4.0*blurSize.x, TexCoordOut.y)) * 0.05;
//    sum += texture2D(Texture, vec2(TexCoordOut.x - 3.0*blurSize.x, TexCoordOut.y)) * 0.09;
//    sum += texture2D(Texture, vec2(TexCoordOut.x - 2.0*blurSize.x, TexCoordOut.y)) * 0.12;
//    sum += texture2D(Texture, vec2(TexCoordOut.x - blurSize.x, TexCoordOut.y)) * 0.15;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y)) * 0.16;
//    sum += texture2D(Texture, vec2(TexCoordOut.x + blurSize.x, TexCoordOut.y)) * 0.15;
//    sum += texture2D(Texture, vec2(TexCoordOut.x + 2.0*blurSize.x, TexCoordOut.y)) * 0.12;
//    sum += texture2D(Texture, vec2(TexCoordOut.x + 3.0*blurSize.x, TexCoordOut.y)) * 0.09;
//    sum += texture2D(Texture, vec2(TexCoordOut.x + 4.0*blurSize.x, TexCoordOut.y)) * 0.05;
//
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 4.0*blurSize.y)) * 0.05;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 3.0*blurSize.y)) * 0.09;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 2.0*blurSize.y)) * 0.12;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 1.0*blurSize.y)) * 0.15;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y)) * 0.16;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 1.0*blurSize.y)) * 0.15;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 2.0*blurSize.y)) * 0.12;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 3.0*blurSize.y)) * 0.09;
//    sum += texture2D(Texture, vec2(TexCoordOut.x, TexCoordOut.y - 4.0*blurSize.y)) * 0.05;

    gl_FragColor = sum*0.33;
    
}
