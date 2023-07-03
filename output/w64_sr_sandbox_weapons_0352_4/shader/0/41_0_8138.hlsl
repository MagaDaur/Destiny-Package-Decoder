// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
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
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s3_s, v0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 0.5 * r0.x;
  r0.x = min(1, r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v4.xy;
  r0.y = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.xyz = t10.Sample(s1_s, r1.xy).xyw;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r0.y = -1 + r1.z;
  r0.zw = -v0.ww + r1.xy;
  r0.y = cb2[5].x * r0.y + 1;
  r1.x = 0.25 * v3.x;
  r0.zw = saturate(r0.zw / r1.xx);
  r0.zw = float2(1,1) + -r0.zw;
  r0.z = r0.z + -r0.w;
  r0.y = r0.y * r0.z + r0.w;
  r0.yz = float2(1,1) + -r0.yw;
  r0.z = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r0.y = t0.Sample(s3_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = -2.51188652e-007 + r0.y;
  r0.y = 1.00000024 * r0.y;
  r0.y = max(0, r0.y);
  r1.y = 1;
  r1.xw = v3.yy;
  r0.yw = r1.xy * r0.yy;
  r1.z = cb13[1].w;
  r0.yw = r0.yw * r1.zw;
  r0.yw = cb13[1].xw * r0.yw;
  r1.xy = cb8[7].xy * r0.yy;
  r0.y = cb13[1].x * r0.w;
  r2.z = cb8[7].z * r0.y;
  r2.xy = float2(0.40041101,0.187153995) * r1.xy;
  o0.xyz = r2.xyz * r0.xxx;
  o1.xyz = r2.xyz * r0.zzz;
  o0.w = 0;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  return;
}