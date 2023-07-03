// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:18 2023
cbuffer cb0 : register(b0)
{
  float4 cb0[31];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[28].xyzw * v0.yyyy;
  r0.xyzw = cb0[27].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[29].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[30].xyzw + r0.xyzw;
  return;
}