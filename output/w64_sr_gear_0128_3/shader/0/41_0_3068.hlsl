// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:48 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[14];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t5.Sample(s3_s, v3.xy).x;
  r1.xyzw = cb0[10].xyzw * r0.xxxx;
  r2.xyzw = cb0[11].xyzw * r0.xxxx;
  r0.xyzw = cb0[12].xyzw * r0.xxxx;
  r3.xy = cmp(float2(1,0) < v3.yx);
  r1.xyzw = r3.yyyy ? r1.xyzw : r2.xyzw;
  r0.xyzw = r3.yyyy ? r0.xyzw : 0;
  r0.xyzw = r3.xxxx ? r0.xyzw : r1.xyzw;
  r1.x = dot(cb0[8].xy, v3.xy);
  r1.x = cb0[8].z + r1.x;
  r1.z = dot(cb0[9].xy, v3.xy);
  r1.y = cb0[9].z + r1.z;
  r1.x = t4.Sample(s3_s, r1.xy).x;
  r1.x = 1 + -r1.x;
  r0.xyzw = r1.xxxx * r0.xyzw;
  r1.x = cb0[7].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[7].xyz + v4.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r2.x = sqrt(r1.x);
  r1.x = r1.w / r1.y;
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r2.y = r1.x * 0.5 + 0.5;
  r1.xyz = t15.SampleLevel(s2_s, r2.xy, 0).xyz;
  r1.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = r1.x * r0.w;
  r0.xyz = cb0[13].xxx * r0.xyz;
  r1.xy = cb12[12].zw * v5.xy;
  r3.xy = float2(4,4) * r1.xy;
  r1.x = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r1.y = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r1.y = -1 + r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  r0.x = saturate(cb0[3].x);
  o0.w = r0.w * r0.x;
  return;
}