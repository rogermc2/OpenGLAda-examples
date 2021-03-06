#version 410 core

layout (location = 0) in vec3 position;

out vec4 particle_colour;

void main(void)
{
    gl_PointSize = 3.0;
    particle_colour = vec4(0.6, 0.8, 0.8, 1.0) * (smoothstep(-10.0, 10.0, position.z) * 0.6 + 0.4);
    gl_Position = vec4(position * 0.2, 1.0);
}
