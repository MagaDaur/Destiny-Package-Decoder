// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
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
  float4 cb0[109];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  uint v7 : SV_VERTEXID0,
  uint v8 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float2 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
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
  r0.x = (int)v7.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v7.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  sincos(v4.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.yx;
  r0.y = r0.y * r2.x + r0.w;
  r0.x = r0.x * r2.x + -r0.z;
  r0.z = cmp(0 < r0.x);
  r0.w = cmp(r0.x < 0);
  r0.z = (int)-r0.z + (int)r0.w;
  r0.z = cmp(0 < (int)r0.z);
  r1.xyz = cb1[1].xyz * v1.yyy;
  r1.xyz = cb1[0].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.zxy * r0.www;
  r0.w = 9.99999975e-005 + r1.w;
  r1.w = cb0[5].y * r0.w;
  r1.xyz = r1.xyz / r0.www;
  r0.w = 0.0333333351 * r1.w;
  r0.w = min(1, r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r3.xyz = cb1[1].xyz * v2.yyy;
  r3.xyz = cb1[0].xyz * v2.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * v2.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r1.xyz = -r0.zzz * r1.xyz + r3.xyz;
  r3.xyz = cb12[7].xyz + -r3.xyz;
  r4.xyz = v5.zzz * r2.yzx;
  r1.xyz = r4.xyz * r0.xxx + r1.xyz;
  r4.xyz = r3.xyz * r2.xyz;
  r4.xyz = r3.zxy * r2.yzx + -r4.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = r4.xyz * r0.xxx;
  r5.xyz = v5.zzz * r4.zxy;
  r0.xyz = r5.xyz * r0.yyy + r1.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r0.x = v5.z + v5.z;
  r0.x = r0.w / r0.x;
  r0.x = 1 + r0.x;
  r0.x = 1 / r0.x;
  r0.x = max(0, r0.x);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r3.xyz * r0.yyy;
  r0.y = dot(r0.wyz, r2.xyz);
  r0.y = -0.965925813 + abs(r0.y);
  r0.y = saturate(-16.7734413 * r0.y);
  r0.x = r0.y * r0.x;
  r0.x = cb0[4].z * r0.x;
  r0.x = cb0[108].x * r0.x;
  r0.y = cmp(0.999000013 < v2.w);
  r0.y = r0.y ? 0 : 1;
  r0.x = r0.x * r0.y;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r0.yzw = r4.xyz * r2.xyz;
  o1.xyz = r2.zxy * r4.yzx + -r0.yzw;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyz;
  o4.w = v5.x;
  o5.xy = v4.xy;
  o5.zw = v5.yz;
  o6.x = v5.w;
  o6.y = v6.x;
  r0.y = cmp(v5.w < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o7.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}