// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t4.Sample(s1_s, v1.xy).x;
  r0.xyz = cb0[14].xyz * r0.xxx;
  r0.xyz = cb0[15].xxx * r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r1.w * r1.w;
  r2.y = cb0[3].y * r1.w;
  r2.x = r2.x * cb0[3].x + r2.y;
  r2.x = cb0[3].z + r2.x;
  r1.xyz = r2.xxx * r0.xyz;
  r2.x = cmp(0 < cb0[3].w);
  r0.w = 0;
  o0.xyzw = r2.xxxx ? r1.xyzw : r0.xyzw;
  return;
}