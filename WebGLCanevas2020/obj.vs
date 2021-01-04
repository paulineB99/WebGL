attribute vec3 aVertexPosition;
attribute vec3 aVertexNormal;
attribute vec3 aVertesColor;

uniform mat4 uRMatrix;
uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;

varying vec4 pos3D;
varying vec3 vNormal;
varying vec3 vColor;

void main(void) {
	pos3D = uMVMatrix * vec4(aVertexPosition,1.0);
	vNormal = vec3(uRMatrix * vec4(aVertexNormal,1.0));
	gl_Position = uPMatrix * pos3D;
}