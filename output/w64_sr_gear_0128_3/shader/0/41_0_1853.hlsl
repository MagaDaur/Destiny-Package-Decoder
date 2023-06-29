// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = saturate(cb0[6].x);
  r0.x = cb0[5].x * r0.x;
  o0.w = 0.00999999978 * r0.x;
  o0.xyz = cb0[4].xyz;
  return;
}