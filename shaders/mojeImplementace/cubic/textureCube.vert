#version 150
in vec3 inPosition;
out vec3 vertPosition;
uniform mat4 mat;
void main() {
	vertPosition = 2*inPosition.xyz-1.0;
	gl_Position = mat * vec4(inPosition, 1.0);
} 
