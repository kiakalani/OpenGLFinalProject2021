#version 330 core

in vec3 vertex;
in vec3 normal;
in vec3 color;
in vec2 uv;

// Uniform (global) buffer
uniform mat4 world_mat;
uniform mat4 view_mat;
uniform mat4 projection_mat;
uniform mat4 normal_mat;
uniform mat4 projection_2d;

// Attributes forwarded to the fragment shader

out vec4 color_interp;
out vec2 uv_interp;



void main()
{
    gl_Position = projection_2d * world_mat * vec4(vertex, 1.0);    

    color_interp = vec4(color, 1.0);

    uv_interp = uv;

}
