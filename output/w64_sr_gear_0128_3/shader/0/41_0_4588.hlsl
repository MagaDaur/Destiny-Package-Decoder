// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:44 2023
cbuffer cb0 : register(b0)
{
  float4 cb0[33];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyz = cb0[0].xyz;
  o0.w = cb0[32].x * 0.00390625 + 0.501953125;
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v0.xyz * r0.xxx;
  o1.xyz = saturate(r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
  r0.x = cb0[32].x + 128.5;
  r0.x = cmp(128 < r0.x);
  o1.w = r0.x ? 0.330000 : 0;
  o2.xyz = float3(0,0.5,0);
  o2.w = v0.w;
  return;
}