attribute vec3 aVertexPosition;
attribute vec3 aVertexNormal;
attribute vec3 aVertesColor;

uniform vec3 aVertexPower;
uniform vec3 aPosLight;

uniform mat4 uRMatrix;
uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;

varying vec4 pos3D;
varying vec3 vNormal;
varying vec3 vColor;
varying vec3 SRCPow;
varying vec3 SRCPos;

void main(void) {
	
	//vColor = aVertesColor
	SRCPow = aVertexPower;
	pos3D = uMVMatrix * vec4(aVertexPosition,1.0);
	vNormal = vec3(uRMatrix * vec4(aVertexNormal,1.0));
	gl_Position = uPMatrix * pos3D;
	SRCPos = aPosLight;
}