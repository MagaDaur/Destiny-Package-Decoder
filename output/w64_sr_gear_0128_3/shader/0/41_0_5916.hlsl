// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:41 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD4,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s1_s, v0.xy).x;
  r0.y = log2(r0.x);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.y * r0.x;
  r0.x = v3.w * r0.x;
  r0.y = -0.5 + v3.x;
  r0.y = saturate(0.5 * r0.y);
  r0.x = saturate(r0.x * r0.y);
  r0.x = saturate(v0.z * r0.x);
  r0.yz = cb12[12].zw * v4.xy;
  r0.yz = cb12[12].xy * r0.yz;
  r1.xy = (int2)r0.yz;
  r1.zw = float2(0,0);
  r0.y = t0.Load(r1.xyz).y;
  r0.y = -v0.w + r0.y;
  r0.z = 0.5 * v3.z;
  r0.y = saturate(r0.y / r0.z);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.xyzw = float4(-0.0199999996,-0.0199999996,0.0199999996,0.0199999996) * r0.xxxx;
  o0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  return;
}