// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[119];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
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
  r0.x = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r0.y = dot(r1.xyz, r0.yzw);
  r0.y = -r0.y * r0.y + 1;
  r0.y = max(0, r0.y);
  r0.z = saturate(cb0[118].x * r0.y);
  r0.y = r0.y * 0.5 + -2.51188652e-007;
  r0.y = 1.00000024 * r0.y;
  r0.y = max(0, r0.y);
  r0.y = cb13[1].w * r0.y;
  r0.y = cb13[1].x * r0.y;
  r0.y = cb8[7].x * r0.y;
  r1.x = 10 * r0.y;
  r0.y = saturate(v0.z * r0.z);
  r0.x = r0.y * r0.x;
  r1.yz = float2(0,0);
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}