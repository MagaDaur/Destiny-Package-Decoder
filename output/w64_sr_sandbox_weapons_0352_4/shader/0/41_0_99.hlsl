// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:47 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

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
  float4 cb0[97];
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
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r0.y = dot(abs(r0.xy), abs(r0.xy));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.x = frac(r0.z);
  r0.zw = r0.xy * v4.xy + v4.zw;
  r0.zw = t2.Sample(s2_s, r0.zw).xy;
  r0.xy = r0.zw * float2(0.0250000004,0.0250000004) + r0.xy;
  r0.xy = float2(-0.0125000002,-0.0125000002) + r0.xy;
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.xyz = t0.Sample(s2_s, r0.xy).xyz;
  r0.w = max(0.00100000005, v6.w);
  r0.w = log2(r0.w);
  r0.w = 2.20000005 * r0.w;
  r0.w = exp2(r0.w);
  r0.xyz = r0.xyz + -r0.www;
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-006, r0.w);
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.x = 1;
  r1.yz = v7.ww;
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v7.w;
  r1.yz = cb13[1].ww;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb13[1].wxx * r0.xyz;
  r1.x = cb13[1].x;
  r1.yz = float2(0.0929189995,0.0733409971);
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v8.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r2.xy = (int2)r1.xy;
  r1.x = -1 + r1.z;
  r0.w = r0.w * r1.x + 1;
  r1.x = t1.Sample(s2_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.y = saturate(r1.x * v7.z + v7.y);
  r1.xz = r1.xx * float2(-0.199999988,-0.300000012) + float2(0.5,0.300000012);
  r1.y = saturate(v0.z * r1.y);
  r1.w = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.y = r1.y * r1.w;
  r0.w = r1.y * r0.w;
  r2.zw = float2(0,0);
  r1.y = t10.Load(r2.xyz).x;
  r1.y = r1.y * cb2[0].y + cb2[0].x;
  r1.y = 1 / r1.y;
  r1.z = r1.z * v7.x + v0.w;
  r1.x = v7.x * r1.x;
  r1.y = r1.y + -r1.z;
  r1.x = saturate(r1.y / r1.x);
  r1.x = 1 + -r1.x;
  r1.x = 1 + -r1.x;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  r0.x = saturate(cb0[96].x);
  o0.w = r0.w * r0.x;
  return;
}