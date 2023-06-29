// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s2_s : register(s2);

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
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t4.Sample(s1_s, v3.xy).x;
  r0.y = cb0[9].z + v3.y;
  r0.y = saturate(cb0[9].y * abs(r0.y) + cb0[9].x);
  r0.x = r0.x + -r0.y;
  r0.x = cb0[10].x * r0.x + r0.y;
  r0.yz = v3.xy * cb0[11].xy + cb0[11].zw;
  r0.y = t5.Sample(s2_s, r0.yz).x;
  r0.x = r0.x * r0.y;
  r0.x = 4.59479332 * r0.x;
  r0.xyzw = cb0[12].xyzw * r0.xxxx;
  r0.xyz = cb0[13].xxx * r0.xyz;
  r0.w = cb0[14].x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r1.x = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  r0.x = saturate(cb0[7].x);
  o0.w = r0.w * r0.x;
  return;
}