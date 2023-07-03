// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb0[8].x + cb0[8].y);
  r0.yz = v3.yx * cb0[6].xy + cb0[6].zw;
  r0.y = t4.Sample(s1_s, r0.yz).x;
  r0.y = r0.y * cb0[7].x + cb0[7].y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[9].x * r0.y + r0.x;
  r0.x = -0.5 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0.5,0,1);
  return;
}