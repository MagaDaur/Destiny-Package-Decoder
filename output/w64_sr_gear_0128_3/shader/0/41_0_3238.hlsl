// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
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
  r0.xy = cb12[12].zw * v4.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.y = saturate(v3.w);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.z = 0.300000012 * v3.z;
  r0.y = saturate(r0.y / r0.z);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r1.x = 1;
  r1.yz = cb13[1].ww;
  r0.yzw = cb0[10].xxx * r1.xyz;
  r0.yzw = cb13[1].wxx * r0.yzw;
  r1.x = cb13[1].x;
  r1.yz = float2(0,0);
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}