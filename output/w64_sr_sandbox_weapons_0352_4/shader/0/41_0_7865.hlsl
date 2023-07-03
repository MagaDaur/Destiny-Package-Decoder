// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s3_s : register(s3);

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
  float4 cb0[10];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r0.x = dot(r0.xyz, v0.xyz);
  r0.yz = cb0[2].xx * r1.xy;
  r0.xy = r0.yz / r0.xx;
  r1.xy = cb12[12].zw * v5.xy;
  r0.zw = r1.xy * cb0[1].xy + cb0[1].zw;
  r0.xy = r0.zw + -r0.xy;
  r0.xy = r0.xy * cb0[3].xy + cb0[3].zw;
  r0.x = t5.Sample(s2_s, r0.xy).x;
  r0.y = v1.w * 0.5 + cb0[4].x;
  r2.x = 0.5 + r0.y;
  r2.yw = float2(0,0);
  r0.y = t6.Sample(s1_s, r2.xy).x;
  r0.y = r0.y + -r0.x;
  r2.z = cb0[5].x * r0.y + r0.x;
  r0.xyz = t4.Sample(s1_s, r2.zw).xyz;
  r0.w = 1;
  r0.xyzw = cb0[0].xyzw * r0.xyzw;
  r0.w = saturate(cb0[9].x * r0.w);
  r0.xyz = cb0[6].xxx * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r2.xyz = -cb12[7].xyz + v4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r1.w = 0.015625 * r1.w;
  r1.w = min(1, r1.w);
  r1.z = sqrt(r1.w);
  r1.z = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s3_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}