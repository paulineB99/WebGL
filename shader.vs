
attribute vec3 aVertexPosition;
attribute vec3 aVertexNormal;
attribute vec3 aVertexColor;
attribute vec3 aVertexPower;
attribute vec3 aVertexPosLight;

uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;
uniform mat4 uRMatrix;

varying vec3 vPosition;
varying vec3 vNormal;
varying vec3 vColor;
varying vec3 vSRCPower;
varying vec3 vSRCpos;

void main(void) {
	vColor = aVertexColor;
	vPosition = vec3(uMVMatrix * vec4(aVertexPosition,1.0));
	vNormal = vec3(uRMatrix*vec4(aVertexNormal,1.0));
	//vNormal = aVertexNormal;
	vSRCPower = vec3(aVertexPower[1]);
	vSRCpos = aVertexPosLight;
	gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition, 1.0);
}
