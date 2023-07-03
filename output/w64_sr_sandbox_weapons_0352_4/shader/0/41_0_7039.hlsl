// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

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
  float4 cb2[1];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float3 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t3.Sample(s2_s, v0.xy).xy;
  r0.zw = r0.xy * v7.xx + v0.xy;
  r0.xy = r0.xy * v6.zz + v0.xy;
  r0.xy = v6.zz * float2(-0.5,-0.5) + r0.xy;
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.x = t0.Sample(s2_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.zw = v7.xx * float2(-0.5,-0.5) + r0.zw;
  r0.z = t2.Sample(s2_s, r0.zw).x;
  r0.z = log2(r0.z);
  r0.w = 1 / v6.w;
  r0.z = r0.w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = saturate(r0.z * v8.y + v8.x);
  r0.z = saturate(v0.z * r0.z);
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v9.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r2.xy = (int2)r1.xy;
  r1.x = -1 + r1.z;
  r0.w = r0.w * r1.x + 1;
  r0.z = r0.z * r0.w;
  r2.zw = float2(0,0);
  r0.w = t10.Load(r2.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r1.x = 0.25 * v7.w;
  r0.w = saturate(r0.w / r1.x);
  r0.w = 1 + -r0.w;
  r1.x = 1 + -r0.w;
  r0.y = v7.y + r0.w;
  r0.xyw = t1.Sample(s3_s, r0.xy).xyz;
  r0.z = r1.x * r0.z;
  r1.x = max(0.00100000005, v7.z);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.xyw = -r1.xxx + r0.xyw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.xyw = r0.xyw / r1.xxx;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.xyw = v4.xyz * r0.xyw;
  r0.xyw = v8.zzz * r0.xyw;
  r0.xyw = cb13[1].www * r0.xyw;
  r0.xyw = cb13[1].xxx * r0.xyw;
  r0.xyw = cb8[7].xyz * r0.xyw;
  o0.xyz = r0.xyw * r0.zzz;
  o0.w = 0;
  return;
}