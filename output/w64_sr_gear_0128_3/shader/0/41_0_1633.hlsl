// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
cbuffer cb5 : register(b5)
{
  float4 cb5[4];
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
  o0.xyzw = cb5[3].xyzw * float4(1,1,1,0.00999999978);
  return;
}