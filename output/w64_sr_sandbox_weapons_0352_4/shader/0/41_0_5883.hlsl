// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:26 2023
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
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
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
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.x = t0.Sample(s2_s, r0.xy).x;
  r0.y = max(0.00100000005, v5.w);
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.x + -r0.y;
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r0.x = r0.x / r0.y;
  r0.x = max(0, r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r0.xyz = v6.www * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v7.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r2.xy = (int2)r1.xy;
  r1.x = -1 + r1.z;
  r0.w = r0.w * r1.x + 1;
  r1.x = t1.Sample(s2_s, v0.xy).x;
  r1.x = saturate(r1.x * v6.z + v6.y);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  r2.zw = float2(0,0);
  r1.x = t10.Load(r2.xyz).x;
  r1.x = r1.x * cb2[0].y + cb2[0].x;
  r1.x = 1 / r1.x;
  r1.x = -v0.w + r1.x;
  r1.x = saturate(0.5 * r1.x);
  r1.x = 1 + -r1.x;
  r1.x = 1 + -r1.x;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}