// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:32 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD6,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = r0.z * r0.z;
  r0.z = cb0[11].z * r0.z;
  r0.xy = r0.xy * r0.zz + v0.xy;
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.xyz = t0.Sample(s2_s, r0.xy).xyz;
  r0.w = max(0.00100000005, v5.z);
  r0.w = log2(r0.w);
  r0.w = 2.20000005 * r0.w;
  r0.w = exp2(r0.w);
  r0.xyz = r0.xyz + -r0.www;
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-006, r0.w);
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[10].xyz * r0.xyz;
  r0.xyz = w1.xww * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v6.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r0.w = r0.w * r1.x + 1;
  r1.x = t1.Sample(s2_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}