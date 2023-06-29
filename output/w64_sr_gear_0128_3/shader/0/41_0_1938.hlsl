// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyz = cb0[0].xyz;
  o0.w = 0;
  r0.xyz = t4.Sample(s1_s, v3.xy).xyz;
  r0.xy = r0.xy * cb0[3].xx + cb0[3].yy;
  r0.z = saturate(cb0[3].z + r0.z);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r1.xyz = v2.xyz * r0.yyy;
  r1.xyz = v1.xyz * r0.xxx + r1.xyz;
  r0.xyw = v0.xyz * r0.www + r1.xyz;
  r1.x = dot(r0.xyw, r0.xyw);
  r1.x = rsqrt(r1.x);
  r0.xyw = r1.xxx * r0.xyw;
  r1.x = saturate(cb0[34].x);
  r0.z = min(r1.x, r0.z);
  r0.z = r0.z * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyw * r0.zzz + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.x = cb0[33].x;
  o2.yz = float2(0.5,0);
  o2.w = v0.w;
  return;
}