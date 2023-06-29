// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
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
  float4 cb12[14];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.zw = float2(0,0);
  r1.xy = cb12[12].zw * v4.xy;
  r2.xy = cb12[12].xy * r1.xy;
  r0.xy = (int2)r2.xy;
  r0.x = t10.Load(r0.xyz).x;
  r0.x = r0.x * cb2[0].y + cb2[0].x;
  r0.x = 1 / r0.x;
  r0.y = -cb12[13].y + 1;
  r0.z = r0.y * -0.100000001 + v0.w;
  r0.z = 0.100000001 + r0.z;
  r0.x = r0.x + -r0.z;
  r0.z = r0.y * -0.100000001 + 0.200000003;
  r0.y = saturate(v3.x * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.x = saturate(r0.x / r0.z);
  r0.x = 1 + -r0.x;
  r0.x = 1 + -r0.x;
  r0.z = dot(-v2.xyz, -v2.xyz);
  r0.z = sqrt(r0.z);
  r0.z = 0.015625 * r0.z;
  r0.z = min(1, r0.z);
  r1.z = sqrt(r0.z);
  r0.z = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r0.w = -1 + r0.w;
  r0.z = r0.z * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.y = t0.Sample(s2_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = -2.51188652e-007 + r0.y;
  r0.y = 1.00000024 * r0.y;
  r0.y = max(0, r0.y);
  r1.x = 1;
  r1.yz = v3.yy;
  r0.yz = r1.xy * r0.yy;
  r1.w = cb13[1].w;
  r0.yz = r1.zw * r0.yz;
  r0.yz = cb13[1].wx * r0.yz;
  r0.y = cb13[1].x * r0.y;
  r0.zw = cb8[7].yz * r0.zz;
  r1.yz = float2(0.0270949993,0.00488199992) * r0.zw;
  r1.x = cb8[7].x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}