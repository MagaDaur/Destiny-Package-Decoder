// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
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
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb0[11].x + cb0[11].y);
  r0.yz = v3.yx * cb0[9].xy + cb0[9].zw;
  r0.y = t4.Sample(s1_s, r0.yz).x;
  r0.y = r0.y * cb0[10].x + cb0[10].y;
  r0.x = saturate(r0.y * r0.x);
  r1.xyzw = cb0[6].xyzw + -cb0[5].xyzw;
  r1.xyzw = cb0[7].xxxx * r1.xyzw + cb0[5].xyzw;
  r0.x = r1.w * r0.x;
  r0.yzw = cb0[8].xyz * r1.xyz;
  r0.yzw = cb0[12].xxx * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.x = saturate(cb0[14].x * r0.x);
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}