// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float4 cb0[112];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float2 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = max(0.00100000005, v3.w);
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.y = max(9.99999975e-006, r0.y);
  r0.zw = t0.Sample(s2_s, v0.xy).xw;
  r0.x = r0.z + -r0.x;
  r0.z = saturate(cb0[111].x * r0.w);
  r0.z = saturate(v0.z * r0.z);
  r0.x = r0.x / r0.y;
  r0.x = max(0, r0.x);
  r0.xyw = v3.xyz * r0.xxx;
  r0.xyw = v4.yyy * r0.xyw;
  r0.xyw = cb13[1].www * r0.xyw;
  r0.xyw = cb13[1].xxx * r0.xyw;
  r0.xyw = cb8[7].xyz * r0.xyw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v5.xy;
  r1.z = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.z = r1.x * r0.z;
  o0.xyz = r0.xyw * r0.zzz;
  o0.w = 0;
  return;
}