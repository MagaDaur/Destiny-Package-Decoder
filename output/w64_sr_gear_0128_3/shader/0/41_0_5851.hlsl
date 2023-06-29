// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:41 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t4 : register(t4);

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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[6].x * 0.75;
  r0.x = max(0, r0.x);
  r0.yzw = -cb12[7].xyz + v4.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.y = sqrt(r1.x);
  r1.x = rsqrt(r1.x);
  r0.x = r1.y + -r0.x;
  r0.x = saturate(1.99999995e-005 * r0.x);
  r2.x = sqrt(r0.x);
  r0.x = r0.w / r1.y;
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r2.y = r0.x * 0.5 + 0.5;
  r2.xyzw = t15.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r0.x = cb0[8].x + cb0[7].x;
  r4.xyzw = cb0[9].xyzw * r0.xxxx;
  r1.yzw = cb0[10].xxx * r4.xyz;
  r1.yzw = r1.yzw * r2.xyz;
  r2.xy = cb12[12].zw * v5.xy;
  r3.xy = float2(4,4) * r2.xy;
  r0.x = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s1_s, r3.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.xxxx * r3.xyzw + float4(0,0,0,1);
  r1.yzw = r1.yzw * r3.www + r3.xyz;
  r3.w = r0.w * r1.x + 1;
  r3.xy = r1.xx * r0.yz;
  r0.x = dot(r3.xyw, r3.xyw);
  r0.x = rsqrt(r0.x);
  r0.xy = r3.xy * r0.xx;
  r0.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.xyz = t4.Sample(s2_s, r0.xy).xyz;
  r0.w = cb13[1].x * cb0[4].x;
  r0.w = -r0.w * r2.w + r0.w;
  r0.xyz = r0.xyz * r0.www + r1.yzw;
  o0.xyz = r0.xyz * r4.www;
  o0.w = r4.w;
  return;
}