#version 330
in vec3 vertColor; // input from the previous pipeline stage
in vec2 texCoord;
out vec4 outColor; // output from the fragment shader
uniform sampler2D textureID;
void main() {
	outColor = texture(textureID, texCoord);
} 
