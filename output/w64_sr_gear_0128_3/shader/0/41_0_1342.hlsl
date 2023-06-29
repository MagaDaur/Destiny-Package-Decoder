// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy * cb0[4].xy + cb0[4].zw;
  r0.z = dot(cb0[5].xy, r0.xy);
  r0.x = dot(cb0[6].xy, r0.xy);
  r0.y = cb0[6].z + r0.x;
  r0.x = cb0[5].z + r0.z;
  r0.xy = r0.xy * cb0[7].xy + cb0[7].zw;
  r0.xy = -cb0[8].xy + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb0[10].x + cb0[10].y);
  r0.xyz = cb0[11].xyz * r0.xxx;
  r0.xyz = cb0[12].xxx * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r1.xyz = -cb12[14].xyz + v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v5.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r0.w = r0.w * r1.x + 1;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}