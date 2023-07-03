// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
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

cbuffer cb0 : register(b0)
{
  float4 cb0[102];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * -2.5 + 1;
  r0.x = max(0, r0.x);
  r0.x = cb0[99].x + r0.x;
  r0.x = floor(r0.x);
  r0.x = max(cb0[100].x, r0.x);
  r0.x = min(cb0[101].x, r0.x);
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r0.x * r0.y;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v3.xy;
  r0.y = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  o0.w = r0.x * r0.y;
  o0.xyz = float3(0,0,0);
  return;
}