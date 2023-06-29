// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  uint v4 : SV_InstanceID0,
  out float4 o0 : TEXCOORD31,
  out uint o1 : TEXCOORD30,
  out float4 o2 : SV_POSITION0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD2,
  out float4 o6 : TEXCOORD3)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, instance_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v0.yyy;
  r0.xyz = cb1[0].xyz * v0.xxx + r0.xyz;
  o0.xyz = cb1[2].xyz * v0.zzz + r0.xyz;
  o1.x = v4.x;
  r0.xyzw = cb1[1].xyzw * v1.yyyy;
  r0.xyzw = cb1[0].xyzw * v1.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v1.zzzz + r0.xyzw;
  o2.xyzw = cb1[3].xyzw + r0.xyzw;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xy = v3.xy;
  o6.zw = float2(0,0);
  return;
}