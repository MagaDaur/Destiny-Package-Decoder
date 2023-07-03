// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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

cbuffer cb0 : register(b0)
{
  float4 cb0[116];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.x;
  r0.x = log2(r0.x);
  r0.y = 1 / cb0[102].x;
  r0.x = r0.y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = saturate(cb0[115].x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v5.xy;
  r0.y = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.xy = t10.Sample(s1_s, r1.xy).yw;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r0.y = -1 + r1.y;
  r0.z = cmp(v0.w < r1.x);
  r0.y = cb2[5].x * r0.y + 1;
  r0.w = r0.z ? 0 : 1;
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y * r0.w + r0.z;
  r0.z = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r1.x = cb13[1].w;
  r1.y = 1;
  r0.yw = cb0[9].yy * r1.xy;
  r0.yw = cb13[1].xw * r0.yw;
  r1.xy = cb8[7].xz * r0.yy;
  r0.y = cb13[1].x * r0.w;
  r2.y = cb8[7].y * r0.y;
  r2.xz = float2(0.0993207321,0.625125766) * r1.xy;
  o0.xyz = r2.xyz * r0.xxx;
  o1.xyz = r2.xyz * r0.zzz;
  o0.w = 0;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  return;
}