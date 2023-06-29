// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:43 2023
cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[7];
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

  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v0.xyz * r0.xxx;
  r0.x = dot(r0.xyz, -cb12[6].xyz);
  r0.x = log2(abs(r0.x));
  r0.x = cb0[4].x * r0.x;
  r0.x = exp2(r0.x);
  r0.xyzw = cb0[5].xyzw * r0.xxxx;
  r0.xyz = cb0[6].xxx * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}