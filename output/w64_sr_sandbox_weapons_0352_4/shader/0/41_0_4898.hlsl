// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:29 2023
cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

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

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(r0.xyz, v0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[0].x + cb0[0].y);
  r0.x = saturate(cb0[1].x * r0.x);
  r0.xyzw = cb0[3].xyzw * r0.xxxx + cb0[2].xyzw;
  r0.xyz = cb0[4].xxx * r0.xyz;
  r0.w = saturate(cb0[6].x * r0.w);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}