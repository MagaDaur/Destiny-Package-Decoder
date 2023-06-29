// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:43 2023
cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
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

  r0.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(r0.xyz, v0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[5].x + cb0[5].y);
  r0.y = saturate(cb0[6].x * 10000 + cb0[6].y);
  r0.x = r0.x * r0.y;
  r0.xyzw = cb0[7].xyzw * r0.xxxx;
  r0.xyz = cb0[8].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}