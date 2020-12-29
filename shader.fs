
precision mediump float;

varying vec3 vPosition;
varying vec3 vNormal;
varying vec3 vColor;
varying vec3 vSRCPower;

const float PI = 3.14159265389793;
// =====================================================
float ddot(vec3 a, vec3 b){
	return max(dot(a,b),0.0);
}

// =====================================================
void main(void) {
	vec3 N = normalize(vNormal);
	vec3 col;
	vec3 SRCpos = vec3(0.0,0.0,0.0);
	vec3 SRCpow = vec3(3.0);

	//if(N.x>0.0) col = vec3(N.x,0.0,0.0); //On peu replacer les x par des y pour voir le dégrader de haut en bas et z
	//else col = vec3(0.0,0.0,-N.x);
	vec3 Vi= normalize (SRCpos-vPosition);
	col = vSRCPower * vec3(vColor/PI * ddot(N,Vi));
	//col = SRCpow * vec3(vColor/PI * ddot(N,Vi));
	gl_FragColor = vec4(col, 1.0);
}
