// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

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
  float4 cb0[11];
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
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v3.xy;
  r0.z = t21.SampleLevel(s2_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s2_s, r0.xy, 0).w;
  r1.xyz = t10.Sample(s1_s, r0.xy).xyw;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.y = t0.Sample(s3_s, v0.xy).x;
  r0.y = saturate(w1.x * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r0.y = -1 + r1.z;
  r0.zw = -v0.ww + r1.xy;
  r0.zw = saturate(float2(0.5,0.5) * r0.zw);
  r0.zw = float2(1,1) + -r0.zw;
  r0.y = cb2[5].x * r0.y + 1;
  r0.z = r0.z + -r0.w;
  r0.y = r0.y * r0.z + r0.w;
  r0.yz = float2(1,1) + -r0.yw;
  r0.z = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r1.xyz = cb13[1].www * cb0[10].xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xxx;
  o1.xyz = r1.xyz * r0.zzz;
  o0.w = 0;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  return;
}