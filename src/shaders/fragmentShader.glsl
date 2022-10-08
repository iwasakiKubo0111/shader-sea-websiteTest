uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

void main(){
  float mixStrengthColor = (vElevation + uColorOffset) * uColorMultiplier;
  //mix(0に近い時の色,1に近い時の色,0~1の値で指定する度合い)
  vec3 color = mix(uDepthColor,uSurfaceColor,mixStrengthColor);
  gl_FragColor = vec4(color,1.0);
}