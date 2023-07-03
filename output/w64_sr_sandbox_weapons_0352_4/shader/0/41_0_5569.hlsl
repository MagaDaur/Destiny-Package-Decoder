// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
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
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.x = t0.Sample(s2_s, r0.xy).x;
  r0.x = cb0[10].x * r0.x;
  r0.y = -0.800000012 + v4.z;
  r0.y = saturate(0.416666657 * r0.y);
  r0.x = saturate(r0.x * r0.y);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v6.xy;
  r0.y = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = saturate(-v0.w + r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = max(0.00100000005, v5.y);
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r0.z = max(9.99999975e-006, r0.y);
  r0.y = r0.y / r0.z;
  r0.y = max(0, r0.y);
  r1.x = 1;
  r1.yz = v5.ww;
  r0.yz = r1.xy * r0.yy;
  r1.w = cb13[1].w;
  r0.yz = r1.zw * r0.yz;
  r0.yz = cb13[1].wx * r0.yz;
  r0.y = cb13[1].x * r0.y;
  r0.zw = cb8[7].yz * r0.zz;
  r1.yz = float2(0.0837609991,0.0387319997) * r0.zw;
  r1.x = cb8[7].x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}