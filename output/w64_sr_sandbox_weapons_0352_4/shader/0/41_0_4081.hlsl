// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:33 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[7];
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
  float4 cb0[105];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.y = saturate(r0.x * cb0[104].x + cb0[104].y);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r1.z = sqrt(r0.x);
  r1.xy = cb12[12].zw * v4.xy;
  r2.xyzw = t11.Sample(s1_s, r1.xy).xyzw;
  r3.xyzw = t13.Sample(s1_s, r1.xy).xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r0.xyzw = r0.yyyy * r2.xyzw + r3.xyzw;
  r0.xyz = cb8[5].xyz * r0.xyz;
  r0.xyz = r0.www * cb8[6].xyz + r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.w = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r1.xyz = t20.SampleLevel(s2_s, r1.xy, 0).xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r0.w = t0.Sample(s3_s, v0.xy).x;
  r0.w = log2(r0.w);
  r0.w = 2.20000005 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(v3.y * r0.w);
  r0.w = saturate(v0.z * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}