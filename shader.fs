
precision mediump float;

varying vec3 vPosition;
varying vec3 vNormal;
varying vec4 vColor;

const float PI = 3.14159265389793;
// =====================================================
float ddot(vec3 a, vec3 b){
	return max(dot(a,b),0.0);
}

// =====================================================
void main(void) {
	vec3 N = normalize(vNormal);
	vec3 col;
	vec3 SRCpos = vec3(1.0,0.0,0.0);
	vec3 SRCpow = vec3(3.0);

	if(N.x>0.0) col = vec3(N.x,0.0,0.0); //On peu replacer les x par des y pour voir le dégrader de haut en bas et z
	else col = vec3(0.0,0.0,-N.x);
	//vec3 Vi= normalize (SRCpos-vPosition);
	//col = SRCpow * vec3(vColor/PI * dot(N,Vi));
	gl_FragColor = vec4(col, 1.0);
}
