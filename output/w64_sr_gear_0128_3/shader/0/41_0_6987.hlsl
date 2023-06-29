// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v0.xyxy * float4(0.75,0.5,0.25,0.25) + float4(0.125,0.25,0.375,0.375);
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.y = t0.Sample(s1_s, r0.zw).y;
  r0.y = r0.y * 0.360000014 + 0.550000012;
  r0.y = max(cb0[1].x, r0.y);
  r0.y = saturate(min(cb0[2].x, r0.y));
  r0.y = r0.y * 0.125 + 0.375;
  r0.x = saturate(r0.x);
  r0.x = r0.x * 0.0408990011 + -2.51188652e-007;
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  o0.xyz = float3(0.800000012,0.800000012,0.800000012) * r0.xxx;
  o0.w = 0;
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xzw = v1.xyz * r0.xxx;
  o1.xyz = saturate(r0.xzw * r0.yyy + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.xyzw = float4(0,0.5,0,1);
  return;
}