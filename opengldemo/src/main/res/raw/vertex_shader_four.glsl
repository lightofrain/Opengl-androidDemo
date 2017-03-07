#version 310 es
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;
layout (location = 2) in vec2 texPosition;
out vec3 fragcolor;
out vec2 outTex;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    gl_Position =projection* view * model * vec4(position, 1.0f);
    fragcolor = color;
    outTex = vec2(texPosition.x,1.0f-texPosition.y);
}