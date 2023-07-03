// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:45 2023
cbuffer cb12 : register(b12)
{
  float4 cb12[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[107];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  uint v3 : SV_VERTEXID0,
  uint v4 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v3.x, vertex_id
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  x0[0].xy = float2(-1,1);
  x0[1].xy = float2(-1,-1);
  x0[2].xy = float2(1,1);
  x0[3].xy = float2(1,-1);
  x1[0].xy = float2(0,0);
  x1[1].xy = float2(0,1);
  x1[2].xy = float2(1,0);
  x1[3].xy = float2(1,1);
  r0.x = (int)v3.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v3.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  o0.w = 1;
  r0.z = cmp(0.999000013 < v0.w);
  r0.z = r0.z ? 0 : cb0[106].x;
  o0.z = r0.z;
  o1.xyz = cb12[6].xyz;
  sincos(v1.w, r1.x, r2.x);
  r1.xy = r1.xx * r0.yx;
  r0.y = r0.y * r2.x + r1.y;
  r0.x = r0.x * r2.x + -r1.x;
  r0.w = cb12[8].x / cb12[8].y;
  r0.x = r0.x / r0.w;
  r1.xyz = cb12[5].xyz * v1.yyy;
  r1.xyz = cb12[4].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb12[6].xyz * v1.zzz + r1.xyz;
  r1.xyz = cb12[7].xyz + r1.xyz;
  r2.xyz = cb12[4].xyz * v2.zzz;
  r2.xyz = r2.xyz * r0.xxx + r1.xyz;
  r1.xyz = cb12[7].xyz + -r1.xyz;
  r3.xyz = cb12[5].xyz * v2.zzz;
  r0.xyw = r3.xyz * r0.yyy + r2.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = 0.75 * v2.z;
  r0.xyw = r1.xyz * r1.www + r0.xyw;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  r0.xyw = -cb12[7].xyz + r0.xyw;
  o3.xyz = v2.yzw;
  r1.x = dot(r0.xyw, cb12[4].xyz);
  r1.y = dot(r0.xyw, cb12[5].xyz);
  r0.x = dot(r0.xyw, cb12[6].xyz);
  r0.x = 11.4300528 + -r0.x;
  r0.y = 11.4300528 / r0.x;
  r0.xz = cmp(r0.xz < float2(0,9.99999997e-007));
  r2.z = r0.x ? -1 : 1;
  r2.xy = r1.xy * r0.yy;
  r2.w = 1;
  o4.xyzw = r0.zzzz ? float4(10000,10000,-10000,1) : r2.xyzw;
  return;
}