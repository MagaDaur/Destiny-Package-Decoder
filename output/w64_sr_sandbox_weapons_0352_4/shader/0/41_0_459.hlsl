// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:46 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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

  r0.xy = v0.xy * cb0[10].xy + cb0[10].zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r0.xyzw = float4(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyxy;
  r0.xyzw = float4(1.00000024,1.00000024,1.00000024,1.00000024) * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r0.xyzw = float4(0.135000005,0.135000005,0.135000005,0.135000005) * r0.xyzw;
  r1.x = t1.Sample(s1_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = saturate(w1.x * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.xyzw = r1.xxxx * r0.xyzw;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}