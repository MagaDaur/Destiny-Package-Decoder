// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb6 : register(b6)
{
  float4 cb6[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
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
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t5.Sample(s1_s, v3.xy).xyz;
  r1.xyz = saturate(float3(4,4,4) * r0.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r0.xyz);
  r1.xyz = cb6[3].xyz * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.w = t4.Sample(s1_s, v3.xy).x;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  o0.w = 0;
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v0.xyz * r0.xxx;
  r0.w = saturate(cb0[0].x);
  r0.w = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.xyz = float3(0,0.5,0);
  o2.w = v0.w;
  return;
}