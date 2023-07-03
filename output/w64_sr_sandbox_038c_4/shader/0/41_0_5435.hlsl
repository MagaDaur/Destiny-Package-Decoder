// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
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
  float4 cb0[110];
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

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * -2.5 + 1;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[100].x * r0.x;
  r0.x = exp2(r0.x);
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v4.xy;
  r0.yz = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.yz;
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(r0.y * -1.25 + 1.125);
  r0.x = r0.y * r0.x + -2.51188652e-007;
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r1.y = 1;
  r1.xw = v3.yy;
  r0.xy = r1.xy * r0.xx;
  r1.z = cb13[1].w;
  r0.xy = r0.xy * r1.zw;
  r0.xy = cb13[1].xw * r0.xy;
  r0.xz = cb8[7].xy * r0.xx;
  r0.y = cb13[1].x * r0.y;
  r1.z = cb8[7].z * r0.y;
  r1.xy = float2(0.31854701,0.508880973) * r0.xz;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r2.z = sqrt(r0.x);
  r0.x = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r0.y = t20.SampleLevel(s1_s, r2.xy, 0).w;
  r0.y = -1 + r0.y;
  r0.x = r0.x * r0.y + 1;
  r0.y = saturate(cb0[109].x);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}