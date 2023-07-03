// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:18 2023
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r0.x = dot(r0.xyz, v0.xyz);
  r0.yz = cb0[2].xx * r1.xy;
  r0.xy = r0.yz / r0.xx;
  r0.zw = cb12[12].zw * v5.xy;
  r0.zw = r0.zw * cb0[1].xy + cb0[1].zw;
  r0.xy = r0.zw + -r0.xy;
  r0.xy = r0.xy * cb0[3].xy + cb0[3].zw;
  r0.x = t4.Sample(s1_s, r0.xy).x;
  r0.y = v1.w * 0.5 + cb0[4].x;
  r1.x = 0.5 + r0.y;
  r1.y = 0;
  r0.y = t5.Sample(s2_s, r1.xy).x;
  r0.y = r0.y + -r0.x;
  r0.x = cb0[5].x * r0.y + r0.x;
  r0.x = -0.5 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0.5,0,1);
  return;
}