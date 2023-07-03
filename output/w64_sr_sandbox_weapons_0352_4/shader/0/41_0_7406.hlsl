// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v3.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.yz = t0.Sample(s2_s, v0.xy).xw;
  r0.yz = log2(r0.yz);
  r0.yz = float2(2.20000005,2.20000005) * r0.yz;
  r0.yz = exp2(r0.yz);
  r0.z = min(1, r0.z);
  r0.y = -2.51188652e-007 + r0.y;
  r0.y = 1.00000024 * r0.y;
  r0.y = max(0, r0.y);
  r0.z = saturate(v0.z * r0.z);
  r0.x = r0.z * r0.x;
  r1.zw = float2(0,0);
  r0.z = t10.Load(r1.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r0.z = -v0.w + r0.z;
  r0.z = saturate(4 * r0.z);
  r0.z = 1 + -r0.z;
  r0.z = 1 + -r0.z;
  r0.x = r0.x * r0.z;
  r1.x = 1;
  r1.yz = w1.xw;
  r0.yz = r1.xy * r0.yy;
  r1.w = cb13[1].w;
  r0.yz = r1.zw * r0.yz;
  r0.yz = cb13[1].wx * r0.yz;
  r0.y = cb13[1].x * r0.y;
  r0.zw = cb8[7].yz * r0.zz;
  r1.yz = float2(0.066128999,0.0316900015) * r0.zw;
  r1.x = cb8[7].x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}