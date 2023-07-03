// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float2 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * -0.571429014 + 0.285714;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[99].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = -2.51188652e-007 + r0.x;
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r0.xyz = v3.xyz * r0.xxx;
  r0.xyz = v4.yyy * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v5.xy;
  r0.w = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r1.z = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.xyw = t10.Sample(s1_s, r1.xy).xyw;
  r1.z = -1 + r1.z;
  r0.w = r0.w * r1.z + 1;
  r1.z = saturate(v4.x);
  r1.z = saturate(v0.z * r1.z);
  r0.w = r1.z * r0.w;
  r1.z = -1 + r1.w;
  r1.xy = -v0.ww + r1.xy;
  r1.z = cb2[5].x * r1.z + 1;
  r1.w = 0.25 * v3.w;
  r1.xy = saturate(r1.xy / r1.ww);
  r1.xy = float2(1,1) + -r1.xy;
  r1.x = r1.x + -r1.y;
  r1.x = r1.z * r1.x + r1.y;
  r1.xy = float2(1,1) + -r1.xy;
  r1.y = r1.y * r0.w;
  o1.xyz = r1.yyy * r0.xyz;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  return;
}