// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:42 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[42];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy * cb0[7].xy + cb0[7].zw;
  r0.xyz = t4.Sample(s1_s, r0.xy).xyz;
  r0.xyz = float3(1,1,1) + -r0.xyz;
  r1.xyz = cb0[10].xyz * cb0[9].xyz;
  r0.xyz = r0.xyz * cb0[8].xyz + r1.xyz;
  r1.xyz = cb0[0].xyz + r0.xyz;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r0.w = saturate(-1 + r0.w);
  r0.w = 1 + -r0.w;
  r1.xyz = cb0[0].xyz * r0.www + r0.xyz;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r0.w = max(1, r0.w);
  o0.xyz = r1.xyz / r0.www;
  o0.w = 0;
  r0.w = dot(v0.xyz, v0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v0.xyz * r0.www;
  r0.w = saturate(cb0[41].x);
  r0.w = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.www + float3(0.5,0.5,0.5));
  o1.w = 0;
  r0.y = max(r0.y, r0.z);
  r0.x = max(r0.x, r0.y);
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = 1 + r0.x;
  o2.y = 0.5 * r0.x;
  o2.x = cb0[40].x;
  o2.z = 0;
  o2.w = v0.w;
  return;
}