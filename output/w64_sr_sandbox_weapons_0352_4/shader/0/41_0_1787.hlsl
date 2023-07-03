// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[10].x * 0.75;
  r0.x = max(0, r0.x);
  r0.yzw = -cb12[7].xyz + v4.xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.x = r0.y + -r0.x;
  r0.x = saturate(1.99999995e-005 * r0.x);
  r1.x = sqrt(r0.x);
  r0.x = r0.w / r0.y;
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r1.y = r0.x * 0.5 + 0.5;
  r0.xyz = t15.SampleLevel(s2_s, r1.xy, 0).xyz;
  r1.xy = v3.xy * cb0[11].xy + cb0[11].zw;
  r1.xyzw = t1.Sample(s3_s, r1.xy).xyzw;
  r3.xyzw = t0.Sample(s3_s, v3.xy).xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = cb0[12].xyzw * r1.xyzw;
  r1.xyz = cb0[13].xxx * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xy = cb12[12].zw * v6.xy;
  r2.xy = float2(4,4) * r1.xy;
  r0.w = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r2.xy, 0).w;
  r1.x = -1 + r1.x;
  r0.w = r0.w * r1.x + 1;
  r0.w = r1.w * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}