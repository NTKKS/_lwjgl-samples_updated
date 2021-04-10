#version 330
in vec3 inPosition;
in vec2 inTextureCoordinates;
out vec2 texCoord;
uniform mat4 mat;
const float PI = 3.1415926535897932384626433832795;

void main() {

    float x = -sin(inPosition.x*PI)*cos(inPosition.y*PI*2);
    float y = sin(inPosition.x*PI)*sin(inPosition.y*PI*2);
    float z = -cos(inPosition.x*PI);

	gl_Position = mat * vec4(x,y,z, 1.0);
	//gl_Position = mat * vec4(inPosition.xyz, 1.0);
	texCoord = inTextureCoordinates;
} 
