// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:45 2023
Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb13[1].ww;
  r0.z = 1;
  r0.xyz = v3.zzz * r0.xyz;
  r0.xyz = cb13[1].xxw * r0.xyz;
  r1.xy = float2(0.388917863,0.186619788);
  r1.z = cb13[1].x;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r0.w * r0.w;
  r0.w = cb0[0].y * r0.w;
  r0.w = r1.x * cb0[0].x + r0.w;
  r0.w = cb0[0].z + r0.w;
  r1.xyz = r0.xyz * r0.www;
  r0.w = cmp(0 < cb0[0].w);
  r0.xyz = r0.www ? r1.xyz : r0.xyz;
  r0.w = 6.28318548 * v3.x;
  sincos(r0.w, r1.x, r2.x);
  r3.x = sin(-r0.w);
  r3.z = r1.x;
  r3.y = r2.x;
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r0.w = dot(r3.yz, r1.xy);
  r1.x = dot(r3.xy, r1.xy);
  r1.y = 0.5 + r1.x;
  r1.x = 0.5 + r0.w;
  r0.w = t0.Sample(s1_s, r1.xy).x;
  r0.w = log2(r0.w);
  r0.w = 2.20000005 * r0.w;
  r0.w = exp2(r0.w);
  r1.x = t0.Sample(s1_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x * r0.w;
  r0.w = min(1, r0.w);
  r0.w = saturate(v0.z * r0.w);
  r0.xyz = r0.xyz * r0.www;
  o0.w = 1 + -r0.w;
  o0.xyz = cb13[1].xxx * r0.xyz;
  return;
}