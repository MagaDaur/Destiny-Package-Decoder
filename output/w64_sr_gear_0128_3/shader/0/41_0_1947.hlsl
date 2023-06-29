// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
cbuffer cb0 : register(b0)
{
  float4 cb0[34];
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
  o0.w = 0;
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v0.xyz * r0.xxx;
  r0.w = saturate(cb0[33].x);
  r0.w = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.x = cb0[32].x;
  o2.yz = float2(0.5,0);
  o2.w = v0.w;
  return;
}