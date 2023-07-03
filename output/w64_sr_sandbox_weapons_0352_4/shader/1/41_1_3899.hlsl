// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
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
  uint v5 : SV_VERTEXID0,
  uint v6 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD4,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, vertex_id
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
  r0.x = (int)v5.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v5.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,0.579999983) + r0.yx;
  r1.xyz = cb1[1].xyz * v2.yyy;
  r1.xyz = cb1[0].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[7].xyz + -r1.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r2.xyz * r0.zzz;
  r4.xyz = cb1[1].zxy * v1.yyy;
  r4.xyz = cb1[0].zxy * v1.xxx + r4.xyz;
  r4.xyz = cb1[2].zxy * v1.zzz + r4.xyz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = rsqrt(r0.z);
  r4.xyz = r4.xyz * r0.zzz;
  r0.z = dot(r4.yzx, r3.xyz);
  r0.z = log2(abs(r0.z));
  r0.z = 2.5 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 0.75 * r0.z;
  r0.w = -0.5 + v4.y;
  r3.y = r0.z * r0.w + 0.5;
  r3.x = v4.y;
  r0.zw = v3.yx * r3.xy;
  r0.xy = r0.xy * r0.zw;
  sincos(v3.w, r3.x, r5.x);
  r0.zw = r3.xx * r0.xy;
  r0.x = r0.x * r5.x + r0.w;
  r0.y = r0.y * r5.x + -r0.z;
  r0.yzw = r4.yzx * r0.yyy;
  r0.yzw = r0.yzw * float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = r4.xyz * r2.xyz;
  r1.xyz = r2.zxy * r4.yzx + -r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = r1.zxy * r0.xxx;
  r0.xyz = r2.xyz * float3(0.5,0.5,0.5) + r0.yzw;
  r2.xyzw = cb12[1].xyzw * r0.yyyy;
  r2.xyzw = cb12[0].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r0.zzzz + r2.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r0.w;
  r1.w = cmp(0.999000013 < v2.w);
  r1.w = r1.w ? 0 : cb0[108].x;
  o0.z = r1.w;
  r1.w = cmp(r1.w < 9.99999997e-007);
  o4.xyzw = r1.wwww ? float4(10000,10000,-10000,1) : r0.xyzw;
  r0.xyz = r4.xyz * r1.xyz;
  o1.xyz = r4.zxy * r1.yzx + -r0.xyz;
  p1.x = v4.z;
  o3.xyzw = v0.xyzw;
  return;
}