// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
Texture2D<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb12[3].xyzw * r0.wwww + r1.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r0.x = r0.x * r1.z + r1.x;
  r1.x = -1 + r1.y;
  r1.y = r0.y * r1.w + -r1.x;
  r1.x = -1 + r0.x;
  o0.xy = r1.xy * r0.ww;
  o0.zw = r0.zw;
  return;
}