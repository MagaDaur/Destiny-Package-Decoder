// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
Texture2D<float4> t1 : register(t1);

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

cbuffer cb0 : register(b0)
{
  float4 cb0[118];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float2 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.xy = t1.Sample(s1_s, r0.xy).xy;
  r0.xy = r0.xy * v4.ww + v0.xy;
  r0.xy = v4.ww * float2(-0.5,-0.5) + r0.xy;
  r0.xy = t0.Sample(s1_s, r0.xy).xw;
  r0.xy = log2(r0.xy);
  r0.xy = float2(2.20000005,2.20000005) * r0.xy;
  r0.xy = exp2(r0.xy);
  r0.x = -2.51188652e-007 + r0.x;
  r0.y = saturate(cb0[117].x * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r0.xzw = cb0[3].xyz * r0.xxx;
  r0.xzw = v5.yyy * r0.xzw;
  r0.xzw = cb13[1].www * r0.xzw;
  r0.xzw = cb13[1].xxx * r0.xzw;
  r0.xzw = cb8[7].xyz * r0.xzw;
  o0.xyz = r0.xzw * r0.yyy;
  o0.w = 0;
  return;
}