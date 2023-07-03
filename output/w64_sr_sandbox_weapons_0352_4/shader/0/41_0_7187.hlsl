// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  float4 cb0[17];
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

  r0.xy = v3.xy * cb0[8].xy + cb0[8].zw;
  r0.xy = t0.Sample(s3_s, r0.xy).xy;
  r0.xy = -cb0[10].xy + r0.xy;
  r0.zw = v3.xy * cb0[7].xy + cb0[7].zw;
  r0.xy = r0.xy * cb0[9].xx + r0.zw;
  r0.x = t1.Sample(s3_s, r0.xy).x;
  r0.x = saturate(r0.x * cb0[11].x + cb0[11].y);
  r0.yzw = cb12[14].xyz + -v4.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r1.xyz = r1.xxx * r0.yzw;
  r0.y = dot(r0.yzw, cb12[6].xyz);
  r0.z = dot(r1.xyz, v0.xyz);
  r0.z = r0.z * r0.z;
  r0.z = saturate(r0.z * cb0[12].x + cb0[12].y);
  r0.z = log2(r0.z);
  r0.z = cb0[13].x * r0.z;
  r0.z = exp2(r0.z);
  r0.x = r0.x * r0.z;
  r1.w = min(1, r0.x);
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v5.xy;
  r0.xz = cb12[12].xy * r3.xy;
  r2.xy = (int2)r0.xz;
  r0.x = t10.Load(r2.xyz).x;
  r0.x = r0.x * cb2[0].y + cb2[0].x;
  r0.x = 1 / r0.x;
  r0.x = r0.x + -abs(r0.y);
  r0.x = saturate(r0.x * cb0[14].x + cb0[14].y);
  r1.xyz = cb0[6].xxx * cb0[5].xyz;
  r0.xyzw = r1.xyzw * r0.xxxx;
  r0.xyz = cb0[15].xxx * r0.xyz;
  r0.w = cb0[16].x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r1.x = cb0[4].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[14].xyz + v4.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r2.x = sqrt(r1.x);
  r1.x = r1.w / r1.y;
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r1.z = -1 + r1.z;
  r1.y = r1.y * r1.z + 1;
  r0.w = r1.y * r0.w;
  r2.y = r1.x * 0.5 + 0.5;
  r1.xyz = t15.SampleLevel(s2_s, r2.xy, 0).xyz;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}