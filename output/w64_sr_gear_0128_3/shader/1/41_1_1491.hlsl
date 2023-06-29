// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Buffer<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD8,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.w = saturate(cb1[7].z * r0.z);
  o0.w = saturate(cb1[7].w + r0.w);
  o0.xyz = r0.xyz;
  o1.w = v0.z;
  r1.xyz = cb1[1].xyz * v2.yyy;
  r1.xyz = cb1[0].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v2.zzz + r1.xyz;
  o1.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  o2.xyz = -r0.xyz;
  o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o4.xyz = r0.xyz;
  r1.x = min(asuint(cb1[4].w), (uint)v4.x);
  o5.xyzw = t0.Load(r1.x).xyzw;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb12[3].xyzw * r0.wwww + r1.xyzw;
  return;
}