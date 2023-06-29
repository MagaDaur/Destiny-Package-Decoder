// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
  r1.x = cmp(0 < r0.w);
  if (r1.x != 0) {
    r0.w = saturate(1 + -r0.w);
    r0.w = 1 + -r0.w;
  } else {
    r0.xyzw = float4(0,0,0,0);
  }
  r1.x = saturate(cb0[2].y);
  r0.w = r1.x * r0.w + -0.5;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  o0.xyz = r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  return;
}