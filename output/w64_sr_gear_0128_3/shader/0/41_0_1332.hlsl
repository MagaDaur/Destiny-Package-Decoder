// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

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
  float4 cb0[9];
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

  r0.xyz = cb0[8].xxx * cb0[7].xyz;
  r0.w = cb0[6].x * 0.75;
  r0.w = max(0, r0.w);
  r1.xyz = -cb12[7].xyz + v4.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  r1.w = rsqrt(r1.w);
  r0.w = r2.x + -r0.w;
  r0.w = saturate(1.99999995e-005 * r0.w);
  r3.x = sqrt(r0.w);
  r0.w = r1.z / r2.x;
  r2.x = 0.015625 * r2.x;
  r2.x = min(1, r2.x);
  r2.z = sqrt(r2.x);
  r3.y = r0.w * 0.5 + 0.5;
  r3.xyzw = t15.SampleLevel(s3_s, r3.xy, 0).xyzw;
  r0.xyz = r3.xyz * r0.xyz;
  r3.xy = cb12[12].zw * v5.xy;
  r2.xy = float2(4,4) * r3.xy;
  r0.w = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r2.w = r1.z * r1.w + 1;
  r2.xy = r1.xy * r1.ww;
  r0.w = dot(r2.xyw, r2.xyw);
  r0.w = rsqrt(r0.w);
  r1.xy = r2.xy * r0.ww;
  r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xyz = t4.Sample(s2_s, r1.xy).xyz;
  r0.w = cb13[1].x * cb0[4].x;
  r0.w = -r0.w * r3.w + r0.w;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.w = t5.Sample(s4_s, v3.xy).x;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}