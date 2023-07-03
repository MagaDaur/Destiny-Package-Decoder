// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:56 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[118];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  uint v5 : SV_VERTEXID0,
  uint v6 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, vertex_id
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
  r0.x = (int)v5.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v5.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,0.5) + r0.yx;
  r0.xy = v2.yx * r0.xy;
  r0.z = v3.w * 6.28200006 + v1.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb1[1].xyz * v1.yyy;
  r1.xyz = cb1[0].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v1.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[4].xyz * cb0[10].www;
  r0.yzw = r2.xyz * r0.yyy + r1.xyz;
  r2.xyz = cb12[5].xyz * cb0[10].www;
  r0.xyz = r2.xyz * r0.xxx + r0.yzw;
  r2.xyzw = cb12[1].xyzw * r0.yyyy;
  r2.xyzw = cb12[0].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r0.zzzz + r2.xyzw;
  r2.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r2.w;
  r0.w = cb0[117].x * cb0[9].y;
  r1.w = cmp(0.999000013 < v0.w);
  r0.w = r1.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  r1.w = cb0[10].w * v2.x;
  r1.w = 0.5 * r1.w;
  r3.xyz = -cb12[4].xyz * r1.www + r0.xyz;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyz = r3.xyz + -r1.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r0.xyz * r1.xxx + -cb12[6].xyz;
  o1.xyz = r0.xyz * float3(0.850000024,0.850000024,0.850000024) + cb12[6].xyz;
  o3.xyw = v3.xyz;
  o3.z = 0;
  r0.x = cmp(v3.z < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r2.xyzw;
  return;
}