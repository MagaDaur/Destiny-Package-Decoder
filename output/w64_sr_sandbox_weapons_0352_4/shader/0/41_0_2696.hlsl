// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
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




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
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
  r0.yz = v0.xy * float2(2,2) + float2(-1,-1);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r0.z = r0.y * r0.y;
  r0.y = r0.z * r0.y;
  r0.z = 3 * r0.z;
  r0.y = r0.y * -2 + r0.z;
  r0.z = saturate(r0.y * v3.z + v3.y);
  r0.z = saturate(v0.z * r0.z);
  r0.x = r0.z * r0.x;
  r1.zw = float2(0,0);
  r0.z = t10.Load(r1.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r1.xy = float2(2,1) + -r0.yy;
  r0.y = -2.51188652e-007 + r0.y;
  r0.y = 1.00000024 * r0.y;
  r0.y = max(0, r0.y);
  r0.w = r1.y * v3.x + v0.w;
  r1.x = v3.x * r1.x;
  r0.z = r0.z + -r0.w;
  r0.z = saturate(r0.z / r1.x);
  r0.z = 1 + -r0.z;
  r0.z = 1 + -r0.z;
  r0.x = r0.x * r0.z;
  r1.x = cb13[1].w;
  r1.y = 1;
  r0.yz = r1.xy * r0.yy;
  r0.yz = cb13[1].xw * r0.yz;
  r0.yw = cb8[7].xy * r0.yy;
  r0.z = cb13[1].x * r0.z;
  r1.z = cb8[7].z * r0.z;
  r1.xy = float2(0.131999999,0.243864) * r0.yw;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}