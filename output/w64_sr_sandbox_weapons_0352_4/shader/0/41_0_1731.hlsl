// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = r0.z * r0.z;
  r0.z = 20 * r0.z;
  r0.xy = r0.xy * r0.zz + v0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
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
  r0.xy = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.x = t0.Sample(s1_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = -2.51188652e-007 + r0.x;
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r0.xyz = cb0[10].xyz * r0.xxx;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.xyz = float3(60,60,60) * r0.xyz;
  r1.xy = cb12[12].zw * v3.xy;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r1.zw = float2(0,0);
  r0.w = t10.Load(r1.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r1.x = t1.Sample(s1_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.yz = r1.xx * float2(0.300000012,-0.800000012) + float2(0.5,0.800000012);
  r1.x = saturate(w1.x * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r1.z = r1.z * 0.180000007 + v0.w;
  r1.y = 0.180000007 * r1.y;
  r0.w = -r1.z + r0.w;
  r0.w = saturate(r0.w / r1.y);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}