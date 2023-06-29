// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
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

  r0.xyz = t7.Sample(s1_s, v3.xy).xyz;
  r0.w = saturate(r0.y);
  r0.xyz = cb0[0].xyz * r0.xyz;
  r1.xyz = cb0[2].xyz * r0.www + cb0[1].xyz;
  o0.xyz = r1.xyz * -r0.xyz + r0.xyz;
  o0.w = 0;
  r0.xyz = t8.Sample(s1_s, v3.xy).xyz;
  r0.xy = r0.xy * cb0[5].xx + cb0[5].yy;
  r0.z = saturate(cb0[5].z + r0.z);
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
  r1.xy = t6.Sample(s1_s, v3.xy).yz;
  r1.xy = saturate(r1.xy);
  r0.z = min(r1.x, r0.z);
  o2.y = 0.5 * r1.y;
  r0.z = r0.z * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyw * r0.zzz + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.xz = float2(0,0);
  o2.w = v0.w;
  return;
}