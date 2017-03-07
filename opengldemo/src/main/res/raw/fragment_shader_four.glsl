#version 310 es
precision mediump float;  //lowp, mediump, highp精度,顶点着色器有默认精度(highp),而片段着色器没有,所以必须指定一个精度
in vec3 fragcolor;
in vec2 outTex;
out vec4 color;
uniform sampler2D outTexture;
uniform sampler2D outTexture1;

void main()
{
    color = mix(texture(outTexture,outTex)*vec4(fragcolor,1.0f),texture(outTexture1,outTex)*vec4(fragcolor,1.0f),0.5);
}