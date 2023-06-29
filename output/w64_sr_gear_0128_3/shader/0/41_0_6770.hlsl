// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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

cbuffer cb0 : register(b0)
{
  float4 cb0[124];
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
  float2 v6 : TEXCOORD6,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = round(v5.z);
  r0.y = 0;
  r0.zw = v0.xy * float2(-2,-2) + float2(1,1);
  r0.xy = r0.xy * r0.zw + v0.xy;
  r0.zw = r0.xy * v3.xy + v3.zw;
  r0.zw = t1.Sample(s2_s, r0.zw).xy;
  r0.xy = r0.zw * float2(0.200000003,0.200000003) + r0.xy;
  r0.xy = float2(-0.100000001,-0.100000001) + r0.xy;
  r0.xy = t0.Sample(s2_s, r0.xy).xw;
  r0.xy = log2(r0.xy);
  r0.xy = float2(2.20000005,2.20000005) * r0.xy;
  r0.xy = exp2(r0.xy);
  r0.y = saturate(cb0[123].x * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.z = dot(-v2.xyz, -v2.xyz);
  r0.z = sqrt(r0.z);
  r0.z = 0.015625 * r0.z;
  r0.z = min(1, r0.z);
  r1.z = sqrt(r0.z);
  r1.xy = cb12[12].zw * v7.xy;
  r0.z = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r0.w = -1 + r0.w;
  r0.z = r0.z * r0.w + 1;
  r0.y = r0.y * r0.z;
  r1.zw = float2(0,0);
  r0.z = t10.Load(r1.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r0.z = -v0.w + r0.z;
  r0.z = saturate(r0.z / v6.x);
  r0.z = 1 + -r0.z;
  r0.z = 1 + -r0.z;
  r0.y = r0.y * r0.z;
  r0.z = max(0.00100000005, v5.w);
  r0.z = log2(r0.z);
  r0.z = 2.20000005 * r0.z;
  r0.z = exp2(r0.z);
  r0.x = r0.x + -r0.z;
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-006, r0.z);
  r0.x = r0.x / r0.z;
  r0.x = max(0, r0.x);
  r0.xzw = v4.xyz * r0.xxx;
  r0.xzw = v6.yyy * r0.xzw;
  r0.xzw = cb13[1].www * r0.xzw;
  r0.xzw = cb13[1].xxx * r0.xzw;
  r0.xzw = cb8[7].xyz * r0.xzw;
  o0.xyz = r0.xzw * r0.yyy;
  o0.w = 0;
  return;
}