// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[106];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s1_s, v0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.yz = v0.xy * v3.xy + v3.zw;
  r0.y = t0.Sample(s1_s, r0.yz).x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(v5.y * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.x = -cb0[105].x + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0.998046875);
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  o1.xyz = saturate(r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
  o1.w = 0.330000013;
  o2.xyzw = float4(0,0.5,0,1);
  return;
}