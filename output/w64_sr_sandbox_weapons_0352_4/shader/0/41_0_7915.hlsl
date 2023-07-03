// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float2 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.Sample(s1_s, v0.xy).xw;
  r0.xy = log2(r0.xy);
  r0.xy = float2(2.20000005,2.20000005) * r0.xy;
  r0.xy = exp2(r0.xy);
  r0.x = -2.51188652e-007 + r0.x;
  r0.y = min(1, r0.y);
  r1.z = saturate(v0.z * r0.y);
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r2.y = 1;
  r2.xw = v3.yy;
  r0.xy = r2.xy * r0.xx;
  r2.z = cb13[1].w;
  r0.xy = r0.xy * r2.zw;
  r0.xy = cb13[1].xw * r0.xy;
  r0.xz = cb8[7].xy * r0.xx;
  r0.y = cb13[1].x * r0.y;
  r2.z = cb8[7].z * r0.y;
  r2.xy = r0.xz * r1.zz;
  r1.xy = float2(0.31854701,0.508880973);
  o0.xyz = r2.xyz * r1.xyz;
  o0.w = 0;
  return;
}