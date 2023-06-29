// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:43 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t4 : register(t4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
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

  r0.xyz = t4.Sample(s3_s, v3.xy).xyz;
  r0.xyz = cb0[8].xyz * r0.xyz;
  r0.xyz = cb0[9].xxx * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = float3(4.59479332,4.59479332,4.59479332) * r0.xyz;
  r0.w = cb0[7].x * 0.75;
  r0.w = max(0, r0.w);
  r1.xyz = -cb12[14].xyz + v4.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + -r0.w;
  r0.w = saturate(1.99999995e-005 * r0.w);
  r2.x = sqrt(r0.w);
  r0.w = r1.z / r1.x;
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r2.y = r0.w * 0.5 + 0.5;
  r2.xyz = t15.SampleLevel(s2_s, r2.xy, 0).xyz;
  r0.xyz = r2.xyz * r0.xyz;
  r1.xy = cb12[12].zw * v5.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r0.w = r0.w * r1.x + 1;
  r0.w = cb0[10].x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}